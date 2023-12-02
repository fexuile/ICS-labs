/*周平川 22307110306@m.fudan.edu.cn*/
#include "cachelab.h"
#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdbool.h>
#include <assert.h>

int hit_count, miss_count, eviction_count;  //用于计数，在printfSummary中使用
int s, E, b, S, t;  //分别表示组索引位长度、行数、偏移块长度、组数、标记位长度
int Time;  //当前时钟，之后每次访问数据都+1，访问时间最久远的行就是T最小的行
bool flag_verbose, flag_usage;   //表示是否有-v和-h参数
FILE *trace_file;   //读入的文件位置

typedef struct    //定义一个高速缓存块结构
{
    int val_sign;   //有效位
    size_t t_sign;  //高速缓存行中的标记位
    int lastTime;   //最后一次访问的时间
}cache_row;           
cache_row **cache;  //整个缓存相当于一个二维数组，由于其大小动态变化，用二维指针表示

void cache_init()   //为cache动态分配空间
{
    cache = (cache_row **)malloc(sizeof(cache_row *) * S);      //先给每组分配
    for (int i = 0; i < S; i++)
        cache[i] = (cache_row *)malloc(sizeof(cache_row) * E);  //再给每行分配
}

void cache_free()   //释放cache所占内存空间
{
    for (int i = 0; i < S; i++)
        free(cache[i]);
    free(cache);
}

void work(size_t addr)  //对当前访问的地址进行处理，模拟高速缓存的行为
{
    ++Time;             //每访问一次，时间+1
    size_t tsign = addr >> (s + b);     //标记位的值
    size_t ssign = (addr ^ (tsign << (s + b))) >> b;    //组索引位的值
    for (int i = 0; i < E; i++)
        if (cache[ssign][i].val_sign && cache[ssign][i].t_sign == tsign)
        {
            if (flag_verbose)
                printf("hit ");
            hit_count++;
            cache[ssign][i].lastTime = Time;
            return;
        }
    if (flag_verbose)         //没有找到对应的行，算一次miss
        printf("miss ");
    miss_count++;
    for (int i = 0; i < E; i++)
        if (!cache[ssign][i].val_sign)   //有效位=0时为空位，有空位时将当前信息存入空位
        {
            cache[ssign][i].val_sign = 1;
            cache[ssign][i].lastTime = Time;
            cache[ssign][i].t_sign = tsign;
            return;
        }
    if (flag_verbose)           //没有空位时需要进行替换，算一次驱逐
        printf("eviction ");
    eviction_count++;
    int ex_row = 0, minTime = Time;
    for (int i = 0; i < E; i++)     //寻找上一次访问时间最远的行即lastTime最小的行
        if (cache[ssign][i].lastTime < minTime)
        {
            minTime = cache[ssign][i].lastTime;
            ex_row = i;
        }
    cache[ssign][ex_row].val_sign = 1;      //替换其中的信息
    cache[ssign][ex_row].lastTime = Time;
    cache[ssign][ex_row].t_sign = tsign;
}

void read_file()
{
    char opt;
    size_t addr;
    int size;
    while (~fscanf(trace_file, " %c %lx,%d", &opt, &addr, &size))
    {
        if (opt == 'I') continue;
        if (flag_verbose)
            printf("%c %lx,%d ", opt, addr, size);
        if (opt == 'M')
            work(addr);
        work(addr);
        if (flag_verbose)
            putchar('\n');
    }
}

void usage()
{
    printf("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n");
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
