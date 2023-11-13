/*
郭劲豪
2200013146@stu.pku.edu.cn
我们使用指针的方式来实现cache，考虑定义cache_row表示一个高速缓存块，
那么一个高速缓存组就是E个高速缓存块，而我们一共有S个组，所以就是一个二
维数组，然后经过内存分配之后模拟在cache中寻找，如果找到了则是一次'hit',
如果没有找到则：
1. 存在空位，直接将其插入，算作一次'miss'
2. 不存在空位，按照LRU(least-recently used)的规则进行替换，算作一次'miss'
一次'eviction'.
最后将cache分配的内存全部回收，输出count的数目。
*/
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdbool.h>
#include <string.h>
#include "cachelab.h"
#include <getopt.h>


void usage();
/*
hit_count, miss_count, eviction_count 分别表示命中/不命中/替代的次数。
s, E, b, Time, S, t 分别表示组位长度，行数，偏移位长度，当前时钟周期，组数(2^s),标识位长度。
flag_verbose, flag_usage 分别表示是否有-v/-h参数。
trace_file 为一个FILE*类型的文件，表示读入的文件位置。
cache_row 表示一个高速缓存块，里面有valid_sign, t_sign和lastTime，分别表示是否存有数据值，标识值，以及最后一次访问的时间戳。
用一个cacherow的二维指针来表示整个高速缓存。
*/
int hit_count, miss_count, eviction_count;
int s, E, b, Time, S, t;
bool flag_verbose, flag_usage;
FILE *trace_file;
typedef struct
{
    int val_sign;
    size_t t_sign;
    int lastTime;
} cache_row;
cache_row **cache;
/*
void work(size_t addr)
addr 表示当前访问的位置的值，用size_t的类型来表示。函数内tsign为标识位，
ssign为组号，所以我们只需要访问当前组所有的行，然后判断当前高速缓存组内是否
有该数据，如果有则直接返回，表示一次'hit'
如果没有：
1. 存在空位，直接将其插入，算作一次'miss'
2. 不存在空位，按照LRU(least-recently used)的规则进行替换，算作一次'miss'
一次'eviction'.
注意在eviction后要更新时间戳以满足LRU的判断。
*/
void work(size_t addr)
{
    ++Time;
    size_t tsign = addr >> (s + b);
    size_t ssign = (addr ^ (tsign << (s + b))) >> b;
    for (int i = 0; i < E; i++)
        if (cache[ssign][i].val_sign && cache[ssign][i].t_sign == tsign)
        {
            if (flag_verbose)
                printf("hit ");
            hit_count++;
            cache[ssign][i].lastTime = Time;
            return;
        }
    if (flag_verbose)
        printf("miss ");
    miss_count++;
    for (int i = 0; i < E; i++)
        if (!cache[ssign][i].val_sign)
        {
            cache[ssign][i].val_sign = 1;
            cache[ssign][i].lastTime = Time;
            cache[ssign][i].t_sign = tsign;
            return;
        }
    if (flag_verbose)
        printf("eviction ");
    eviction_count++;
    int ex_row = 0, minTime = Time;
    for (int i = 0; i < E; i++)
        if (cache[ssign][i].lastTime < minTime)
        {
            minTime = cache[ssign][i].lastTime;
            ex_row = i;
        }
    cache[ssign][ex_row].val_sign = 1;
    cache[ssign][ex_row].lastTime = Time;
    cache[ssign][ex_row].t_sign = tsign;
}

/*
void cache_free()
生成cache需要占用的内存空间，这里使用malloc动态生成。
*/
void cache_init()
{
    cache = (cache_row **)malloc(sizeof(cache_row *) * S);
    for (int i = 0; i < S; i++)
        cache[i] = (cache_row *)malloc(sizeof(cache_row) * E);
}

/*
void cache_free()
释放cache的内存。
*/
void cache_free()
{
    for (int i = 0; i < S; i++)
        free(cache[i]);
    free(cache);
}

/*
这里通过特定格式读入操作，地址和偏移大小3个变量，值得注意的是
fscanf来读入文件中的输入吗，操作前面有空格，以及偏移大小始终不会超过，所以可以忽略不计。
Modify(M)等价于一次访问一次保存，所以相当于是对该地址进行两次cache的访问。
注意如果存在-v则需要输出信息，同时控制格式。
*/
void read_file()
{
    char opt;
    size_t addr;
    int size;
    while (~fscanf(trace_file, " %c %lx,%d", &opt, &addr, &size))
    {
        if (flag_verbose)
            printf("%c %lx,%d ", opt, addr, size);
        if (opt == 'M')
            work(addr);
        work(addr);
        if (flag_verbose)
            putchar('\n');
    }
} 

/* 
getopt的用法为(argc,argc,指令)，指令后若跟':'则代表有参数，然后根据题目给出的实例
一一对应即可，注意如果trace_file为空则也要输出usage信息而不执行，剩下的就是将cache初始化，
然后进行操作，最后将cache释放。
*/
int main(int argc, char *argv[])
{
    char opt;
    while (~(opt = getopt(argc, argv, "hvs:E:b:t:")))
    {
        switch (opt)
        {
        case 'h':
            flag_usage = 1;
            break;
        case 'v':
            flag_verbose = 1;
            break;
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            trace_file = fopen(optarg, "r");
            break;
        default:
            break;
        }
    }
    if (flag_usage || trace_file == NULL)
    {
        usage();
        return 0;
    }
    S = 1 << s;
    t = 64 - s - b;
    cache_init();
    read_file();
    cache_free();
    fclose(trace_file);
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}

/*  
usage表示使用说明，在运行的时候有-h标识或者输入的指令不合法的时候会引用该函数。
*/
void usage()
{
    printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n");
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n\n");
    printf("Examples:\n");
    printf("  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n");
    printf("  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
}