/*
 * mm.c
 *
 * 2200013146@stu.pku.edu.cn 郭劲豪
 * 采用分离适配的空闲列表模式 + 首次适配 + 去除已分配块的脚部 + 将小块分配到堆左侧，大块分配到堆右侧 + 4字节地址。
 * 分离适配的空闲列表模式采用 22 个链表，每个链表的大小范围为[2^(i+4), 2^(i+5))，其中i从0到21，当
 * i取21的时候，右边为正无穷。每个链表中的块按照LIFO的顺序插入。
 * 当需要分配的时候，首先根据需要的大小计算出对应的链表，然后从该链表中寻找第一个合适的块，如果找到了就直接分配，
 * 如果没有找到就从下一个链表中寻找，直到找到为止。当需要释放的时候，首先将该块从链表中删除，
 * 然后考虑该块和前后块合并，就和处理隐式链表的差不多，比较需要注意的是，因为采用了已分配块去除脚部的方式，所以在合并的时候需要考虑
 * 前一个块是否能够使用PREV_BLKP宏。
 * 注意在合并的时候要对对应的空闲块链表进行维护。
 * 这个lab的重点也在于你计算一个指针的时候，要考虑他是指向头部/尾部，还是指向数据分配的开始。不然可能会导致一些奇怪的segmentation fault。
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
// #define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8
#define WSIZE 4
#define DSIZE 8

// 反复调整CHUNKSIZE找到一个比较优秀的值
#define CHUNKSIZE (4096 - 1036)

#define MAX(x, y) ((x) > (y) ? (x) : (y))

#define PACK(size, alloc) ((size) | (alloc))
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

// p是空闲列表对应偏移量，然后因为堆大小不超过2^32，所以用偏移量存储对应的指针地址。
#define GET_FREE(p) (*(unsigned int *)(p) + free_listp)
#define PUT_FREE(p, val) (*(unsigned int *)(p) = (char *)(val) - free_listp)

// p是头部/尾部的开始，然后要求对应的大小，分配情况，和设置上一个块分配 / 取消分配
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)
#define SET_PREV_ALLOC(p) (*(unsigned int *)(p) |= 0x2)
#define UNSET_PREV_ALLOC(p) (*(unsigned int *)(p) &= (~0x2))

// bp是数据存储的开始，然后要求头部和尾部
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

// bp是数据存储的开始，然后要求前一个块和后一个块的位置
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE((char *)(bp) - DSIZE)) 
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE((char *)(bp) - WSIZE))

// bp是数据存储的开始，然后要求空闲块前驱和后继的位置
#define FIRST_FREE(index) (free_listp + index * WSIZE)
#define PREV_FREE(bp) ((char *)(bp))
#define NEXT_FREE(bp) ((char *)(bp) + WSIZE)

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

static int check_freelist(int lineno);

static void delete_free(void *bp);
static void insert_free(void *bp);
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *find_fit(size_t asize);
static void *place(void *bp, size_t asize);

// 分别表示分配堆的开始，空闲列表偏移量做差的值（实际上也就是堆的初始位置）和分配类的数目。
static char *heap_listp = 0;
static char *free_listp = 0;
static int class_num = 22;

// 根据需要分配的大小，计算对应的分配类序号。
int calc_index(size_t asize) {
    for(int i = 4; i < class_num + 3; i++) 
        if (asize <= (1u<<i)) return i - 4;
    return class_num - 1;
}

/*
 * Initialize: return -1 on error, 0 on success.
 * 注意要初始化序言块和终止块，以及每一个分配类空闲列表初始的指针。
 */
int mm_init(void) {
    if ((heap_listp = mem_sbrk(4 * WSIZE + class_num * WSIZE)) == (void *)-1) 
        return -1;
    PUT(heap_listp + class_num * WSIZE, 0);
    PUT(heap_listp + (1 * WSIZE + class_num * WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (3 * WSIZE + class_num * WSIZE), PACK(0, 2));
    free_listp = heap_listp;
    heap_listp += (class_num * WSIZE + 2 * WSIZE);
    for (int i = 0; i < class_num; i++) 
        PUT_FREE(FIRST_FREE(i), free_listp);
    // 这里比较细节的是，我们第一次不需要分配太大的块，只需要暂时分配一个2 * DSIZE的块即可。
    if (extend_heap(2 * DSIZE / WSIZE) == NULL)
        return -1;
    return 0;
}

/*
 * malloc
 * 采用find_fit寻找空闲块中可分配的块，如果找到了就直接分配，如果没有找到就扩展堆，然后再分配。
 * 注意计算分配字节的时候，要考虑到头部大小以及和8字节对齐。
 * 然后注意，最小的块也得是2 * DSIZE， 不然在变成空闲块的时候就无法计算指针了。
 */
void *malloc (size_t size) {
    if (!heap_listp) mm_init();
    if (size == 0) return NULL;
    void *bp;
    size_t asize;
    if (size <= DSIZE) asize = 2 *DSIZE;
    else asize = DSIZE * ((size + WSIZE + (DSIZE - 1)) / DSIZE);
    if ((bp = find_fit(asize)) != NULL) {
        bp = place(bp, asize);
        return bp;
    }
    size_t extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;
    bp = place(bp, asize);
    return bp;
}

/*
 * free
 * 注意要对下一个块的alloc_prev位赋值，然后将当前块重置为未分配块。
 * 如果下一个块是未分配块，还得修改他的脚部。
 */
void free (void *ptr) {
    if (heap_listp == 0) mm_init();
    if (!ptr) return;
    size_t size = GET_SIZE(HDRP(ptr));
    // 注意继承PREV_ALLOC的值，不然会导致前一个分配块状态的丢失。
    PUT(HDRP(ptr), PACK(size, GET_PREV_ALLOC(HDRP(ptr))));
    PUT(FTRP(ptr), PACK(size, GET_PREV_ALLOC(HDRP(ptr))));
    UNSET_PREV_ALLOC(HDRP(NEXT_BLKP(ptr)));
    if(!GET_ALLOC(HDRP(NEXT_BLKP(ptr))))UNSET_PREV_ALLOC(FTRP(NEXT_BLKP(ptr)));
    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 * 采用的就是将新建一个块，然后复制旧块的值，再将旧块free。
 */
void *realloc(void *oldptr, size_t size) {
    if (heap_listp == 0) mm_init();
    if (!oldptr) return malloc(size);
    if (size == 0) {
        free(oldptr);
        return NULL;
    }
    size_t oldsize = GET_SIZE(HDRP(oldptr));
    void *newptr = malloc(size);
    if (!newptr) return NULL;
    if (oldsize > size) oldsize = size; 
    memcpy(newptr, oldptr, oldsize);
    free(oldptr);
    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 * 调用一次malloc，然后将对应的赋值为0.
 */
void *calloc (size_t nmemb, size_t size) {
    if (heap_listp == 0) mm_init();
    size_t bytes = nmemb * size;
    void *ptr = malloc(bytes);
    memset(ptr, 0, bytes);
    return ptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 * 进行了writeup文件中所需要的所有检查，包括序言块和终止块，对齐，块大小，块分配情况，块头部和脚部匹配，块的连续性，空闲块的连续性。
 * 同时采用dbg_printf进行了输出，如果检查出现错误，就会输出错误信息，然后退出。在提交的时候注释DEBUG
 * 就不会输出多余的调试信息。
 */
void mm_checkheap(int lineno) {
    void *ptr = heap_listp;
    int free_count = 0;
    if(GET(HDRP(ptr)) != PACK(DSIZE, 1)) {
        dbg_printf("Line %d: ", lineno);
        dbg_printf("prologue blocks error!\n"); 
        exit(0);
    }
    ptr = NEXT_BLKP(ptr);
    for (; GET_SIZE(HDRP(ptr)) > 0; ptr = NEXT_BLKP(ptr)) {
        if (!GET_ALLOC(HDRP(ptr))) free_count++;
         if(!in_heap(ptr)) {
            dbg_printf("block point not in heap!\n");
            exit(0);
        }
        if (ALIGN(ptr) != (size_t)ptr) {
            dbg_printf("alignment error!\n");
            exit(0);
        }
        if (GET_ALLOC(HDRP(ptr)) == 0 && GET_ALLOC(HDRP(NEXT_BLKP(ptr))) == 0) {
            dbg_printf("contiguous free blocks error!\n");
            exit(0);
        }
        if (GET_SIZE(HDRP(ptr)) < 2 * DSIZE){
            dbg_printf("block size error!\n");
            exit(0);
            }
        if (GET_ALLOC(HDRP(ptr)) != GET_PREV_ALLOC(HDRP(NEXT_BLKP(ptr))) / 2) {
            dbg_printf("prev_alloc error!\n");
            exit(0);
        }
        if (!GET_ALLOC(HDRP(ptr)) && GET(HDRP(ptr)) != GET(FTRP(ptr))){
            dbg_printf("header and footer matching error!\n");
            exit(0);
        }
        if (!GET_ALLOC(HDRP(ptr)) && !GET_ALLOC(HDRP(NEXT_BLKP(ptr)))){
            dbg_printf("consecutive free blocks error!\n");
            exit(0);
        }
    }
    if (GET_SIZE(HDRP(ptr)) != 0 || GET_ALLOC(HDRP(ptr)) != 1) {
        dbg_printf("epilogue blocks error!\n");
        exit(0);
    }
    if (free_count != check_freelist(lineno)) {
        dbg_printf("free blocks count error!\n");
        exit(0);
    }
}

/*
 * 验证空闲块指针是否都在堆内，空闲块大小是否正确，以及空闲块数量是否一样。
 */
int check_freelist(int lineno) {
    void *ptr;
    int count = 0;
    for(int i = 0; i < class_num; i++){
        ptr = GET_FREE(FIRST_FREE(i));
        while (ptr != free_listp) {
            count++;
            if (!in_heap(ptr)) {
                dbg_printf("free pointer not in heap!\n");
                exit(0);
            }
            if (GET_SIZE(HDRP(ptr)) > 1u<<(i + 4) || GET_SIZE(HDRP(ptr)) <= ((1u<<(i + 3)))) {
                dbg_printf("free block size error!\n");
                exit(0);
            }
            ptr = GET_FREE(NEXT_FREE(ptr));
        }
    }
    return count;
}

/*
 * 扩展堆words * 4个字节， 注意要保存前一个块是否分配的信息，再分配一个结尾块。
 */

static void *extend_heap(size_t words) {
    char *bp;
    size_t size;
    size = (words + 1) / 2 * 2 * WSIZE; 
    if ((bp = mem_sbrk(size)) == (void *)-1)
        return NULL;
    PUT(HDRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));
    PUT(FTRP(bp), PACK(size, GET_PREV_ALLOC(HDRP(bp))));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));
    return coalesce(bp);
}

/*
 * 合并该块和相邻的块，注意要先用GET_PREV_ALLOC来判断前面一个块是不是分配块，如果是
 * 就不能调用PREV_BLKP()，因为它没有脚部，不会存储对应的size。
 * 其他的就是合并，然后将被合并的块从空闲块表中删除，最后记得插入bp对应的空闲块。
 */

static void *coalesce(void *bp) {
    int prev = GET_PREV_ALLOC(HDRP(bp));
    int next = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    if (prev && next) {
        insert_free(bp);
        return bp;
    }
    else if (prev) {
        delete_free(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 2));
        PUT(FTRP(bp), PACK(size, 2));
    }
    else if (next){
        delete_free(PREV_BLKP(bp));
        int pre_prealloc = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, pre_prealloc));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, pre_prealloc));
        bp = PREV_BLKP(bp);
    }
    else {
        delete_free(NEXT_BLKP(bp));
        delete_free(PREV_BLKP(bp));
        int pre_prealloc = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        // 这里要记得保存上一个块的存储状态，不然会导致prev_alloc丢失
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, pre_prealloc));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, pre_prealloc));
        bp = PREV_BLKP(bp);
    }
    insert_free(bp);
    return bp;
}   

/*
 * 首先根据块大小确定至少属于哪个类别，然后再去遍历从这个类别往上的所有块，采用一种比较独特的取的方式，兼顾
 * 时间性和空间效率。
 * 
 */

static void *find_fit(size_t asize) {
    int index = calc_index(asize), times = 0;
    char *ptr, *bestptr = NULL;
    while(index < class_num) {
        ptr = GET_FREE(FIRST_FREE(index));
        while(ptr != free_listp){
            if (GET_SIZE(HDRP(ptr)) >= asize) {
                if(bestptr == NULL || GET_SIZE(HDRP(ptr)) <= GET_SIZE(HDRP(bestptr)))bestptr = ptr;
                times ++; 
            }
            if(times >= 20) return bestptr;
            // 这里采用的是前20fit, 也就是说在找到的前20个中，取最接近的。既能保证时间够，也能保证具有充分的空间利用率。
            ptr = GET_FREE(NEXT_FREE(ptr));
        }
        if(bestptr != NULL) return bestptr;
        index++;
    }
    return bestptr;
}

/*
 * 将一个空闲块插入到分离适配链表中，找到对应的分配类，然后将其按照LIFO的顺序插入即可。
 */

static void insert_free(void *bp) {
    size_t csize = GET_SIZE(HDRP(bp));
    int index = calc_index(csize);
    void *index_free_listp = FIRST_FREE(index);
    PUT_FREE(PREV_FREE(bp), free_listp);
    PUT_FREE(NEXT_FREE(bp), GET_FREE(index_free_listp));
    // 注意这里要判断这个块之前是不是空的，如果不是就需要将之前块的prev指向这个块。
    if (GET_FREE(index_free_listp) != free_listp) PUT_FREE(PREV_FREE(GET_FREE(index_free_listp)), bp);
    PUT_FREE(index_free_listp, bp);
}

/*
 * 将一个空闲块从分离适配链表中删除。
 * 只需要将前驱的后继变成后继，后继的前驱变成前驱即可。
 * 注意如果没有前驱，则需要将初始指针指向后继。（也就是删除了第一个）
 */

static void delete_free(void *bp) {
    size_t csize = GET_SIZE(HDRP(bp));
    int index = calc_index(csize);
    if (GET_FREE(PREV_FREE(bp)) != free_listp) 
        PUT_FREE(NEXT_FREE(GET_FREE(PREV_FREE(bp))), GET_FREE(NEXT_FREE(bp)));
    else
        PUT_FREE(FIRST_FREE(index), GET_FREE(NEXT_FREE(bp)));
    if (GET_FREE(NEXT_FREE(bp)) != free_listp)
        PUT_FREE(PREV_FREE(GET_FREE(NEXT_FREE(bp))), GET_FREE(PREV_FREE(bp)));
}

/*
 * 考虑我们将长为asize的chunk放在bp这个位置对应的块中。
 * 如果剩下的块不够分割出一个空闲块，那么我们直接分配即可，不需要考虑切割。
 * 如果剩下的块足够被切割，那么就需要判断将小块放置在前面，大块放置在后面的策略，以保证将大块free之后可以有足够的空间分配。
 * 这里我们通过调整参数选取72字节作为区分大块和小块的界限。
 */

static void *place(void *bp, size_t asize) {
    size_t csize = GET_SIZE(HDRP(bp));
    void *ptr = bp; 
    delete_free(bp);
    if ((csize - asize) < 2 * DSIZE) {
        PUT(HDRP(bp), PACK(csize, 1 | GET_PREV_ALLOC(HDRP(bp))));
        SET_PREV_ALLOC(HDRP(NEXT_BLKP(bp)));
        // 比较细节的是这个判断下一个块是否为分配块，如果不是则还需要修改尾部。
        if(!GET_ALLOC(HDRP(NEXT_BLKP(bp))))SET_PREV_ALLOC(FTRP(NEXT_BLKP(bp)));
    }
    else if(asize <= 72){
        // 注意继承PREV_ALLOC的值，不然会导致前一个分配块状态的丢失。
        PUT(HDRP(bp), PACK(asize, 1 | GET_PREV_ALLOC(HDRP(bp))));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 2));
        PUT(FTRP(bp), PACK(csize - asize, 2));
        insert_free(bp);
    }
    else{
        int prev_alloc = GET_PREV_ALLOC(HDRP(bp));
        // 注意继承PREV_ALLOC的值，不然会导致前一个分配块状态的丢失。
        PUT(HDRP(bp), PACK(csize - asize, prev_alloc));
        PUT(FTRP(bp), PACK(csize - asize, prev_alloc));
        insert_free(bp);
        bp = NEXT_BLKP(bp);
        ptr = bp;
        PUT(HDRP(bp), PACK(asize, 1));
        SET_PREV_ALLOC(HDRP(NEXT_BLKP(bp)));
        // 比较细节的是这个判断下一个块是否为分配块，如果不是则还需要修改尾部。
        if (!GET_ALLOC(HDRP(NEXT_BLKP(bp)))) SET_PREV_ALLOC(FTRP(NEXT_BLKP(bp)));
    }
    return ptr;
}