/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
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
#define DEBUG
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
#define CHUNKSIZE (1<<12)

#define MAX(x, y) ((x) > (y) ? (x) : (y))

#define PACK(size, alloc) ((size) | (alloc))
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_FREE(p) (*(unsigned int *)(p) + free_listp)
#define PUT_FREE(p, val) (*(unsigned int *)(p) = (char *)(val) - free_listp)

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

// bp是数据存储的开始，然后要求前驱和后继的位置
#define FIRST_FREE(index) (free_listp + index * WSIZE)
#define PREV_FREE(bp) ((char *)(bp))
#define NEXT_FREE(bp) ((char *)(bp) + WSIZE)

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

static void delete_free(void *bp);
static void insert_free(void *bp);
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *find_fit(size_t asize);
static void *place(void *bp, size_t asize);

static char *heap_listp = 0;
static char *free_listp = 0;
static int class_num = 18;

int calc_index(size_t asize) {
    for(int i = 4; i < class_num + 3; i++) 
        if (asize <= (1u<<i)) return i - 4;
    return class_num - 1;
}

/*
 * Initialize: return -1 on error, 0 on success.
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
    if (extend_heap(2 * DSIZE / WSIZE) == NULL)
        return -1;
    return 0;
}

/*
 * malloc
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
    //     printf("Place %x\n", bp);
    // mm_checkheap(0);
        return bp;
    }
    size_t extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;
    bp = place(bp, asize);
    // printf("Place %x\n", bp);
    // mm_checkheap(0);
    return bp;
}

/*
 * free
 */
void free (void *ptr) {
    if (heap_listp == 0) mm_init();
    if (!ptr) return;
    size_t size = GET_SIZE(HDRP(ptr));
    PUT(HDRP(ptr), PACK(size, GET_PREV_ALLOC(HDRP(ptr))));
    PUT(FTRP(ptr), PACK(size, GET_PREV_ALLOC(HDRP(ptr))));
    UNSET_PREV_ALLOC(HDRP(NEXT_BLKP(ptr)));
    if(!GET_ALLOC(HDRP(NEXT_BLKP(ptr))))UNSET_PREV_ALLOC(FTRP(NEXT_BLKP(ptr)));
    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *ptr, size_t size) {
    if (ptr == NULL) {
        return malloc(size);
    }

    if (size == 0) {
        free(ptr);
        return NULL;
    }

    size_t oldsize = GET_SIZE(HDRP(ptr));
    if (size <= oldsize) {
        // 如果新的大小小于或等于旧的大小，那么我们可以直接返回旧的内存块。
        return ptr;
    }

    void *next_block = NEXT_BLKP(ptr);
    size_t next_size = GET_SIZE(HDRP(next_block));
    if (!GET_ALLOC(HDRP(next_block)) && oldsize + next_size >= size) {
        // 如果旧的内存块可以在原地扩展，那么我们就扩展它。
        PUT(HDRP(ptr), PACK(oldsize + next_size, 1));
        PUT(FTRP(ptr), PACK(oldsize + next_size, 1));
        return ptr;
    }

    // 否则，我们需要分配一个新的内存块，并复制旧的数据到新的内存块。
    void *newptr = malloc(size);
    if (newptr == NULL) {
        return NULL;
    }
    memcpy(newptr, ptr, oldsize);
    free(ptr);
    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
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
 */
void mm_checkheap(int lineno) {
    
}

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
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, pre_prealloc));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, pre_prealloc));
        bp = PREV_BLKP(bp);
    }
    insert_free(bp);
    return bp;
}   

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
            ptr = GET_FREE(NEXT_FREE(ptr));
        }
        if(bestptr != NULL) return bestptr;
        index++;
    }
    return bestptr;
}

static void insert_free(void *bp) {
    size_t csize = GET_SIZE(HDRP(bp));
    int index = calc_index(csize);
    void *index_free_listp = FIRST_FREE(index);
    PUT_FREE(PREV_FREE(bp), free_listp);
    PUT_FREE(NEXT_FREE(bp), GET_FREE(index_free_listp));
    if (GET_FREE(index_free_listp) != free_listp) PUT_FREE(PREV_FREE(GET_FREE(index_free_listp)), bp);
    PUT_FREE(index_free_listp, bp);
}

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

static void *place(void *bp, size_t asize) {
    size_t csize = GET_SIZE(HDRP(bp));
    void *ptr = bp; 
    delete_free(bp);
    if ((csize - asize) < 2 * DSIZE) {
        PUT(HDRP(bp), PACK(csize, 1 | GET_PREV_ALLOC(HDRP(bp))));
        SET_PREV_ALLOC(HDRP(NEXT_BLKP(bp)));
        if(!GET_ALLOC(HDRP(NEXT_BLKP(bp))))SET_PREV_ALLOC(FTRP(NEXT_BLKP(bp)));
    }
    else if(asize <= 128){
        PUT(HDRP(bp), PACK(asize, 1 | GET_PREV_ALLOC(HDRP(bp))));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 2));
        PUT(FTRP(bp), PACK(csize - asize, 2));
        insert_free(bp);
    }
    else{
        int prev_alloc = GET_PREV_ALLOC(HDRP(bp));
        PUT(HDRP(bp), PACK(csize - asize, prev_alloc));
        PUT(FTRP(bp), PACK(csize - asize, prev_alloc));
        insert_free(bp);
        bp = NEXT_BLKP(bp);
        ptr = bp;
        PUT(HDRP(bp), PACK(asize, 1));
        SET_PREV_ALLOC(HDRP(NEXT_BLKP(bp)));
        if (!GET_ALLOC(HDRP(NEXT_BLKP(bp)))) SET_PREV_ALLOC(FTRP(NEXT_BLKP(bp)));
    }
    return ptr;
}