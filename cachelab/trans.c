/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */

/*
郭劲豪
2200013146@stu.pku.edu.cn
我们用不同的做法来分别实现32*32, 64*64 和 60*68 三种大小的矩阵。
在writeup中有说， (s = 5, E = 1, b = 5), 所以一共是直接映射缓存，每个缓存组内
有一个可以存储 2^5/4 = 8个int的高速缓存块，然后一共有32个高速缓存组。
1. 32*32:
考虑用分块的方法， 将原矩阵分成 8*8 的小矩阵， 然后考虑每8行32列刚好用完0~31这32个
高速缓存组，所以我们分成8*8的矩阵非常的合理。
我们还可以将对列的访问进行循环展开， 先将所有的都存储下来然后再去复制，这样子可以最小化
miss数。
注意到当前Miss count为288，与我们的估计值32*32/8/8*(8+8)=256仍然有一定的差距，因为
在对角线处的时候，每一次都会多若干次次的驱逐，也就是写的miss增加了，那么这个时候我们可以
先将A全部复制到B中去，这样子有16次missing，再对B进行转置，转置的时候因为都是B的内容了，
所以不会产生不命中。

2. 64*64：
我们考虑如果仍然按照32*32的做法来，考虑虽然还是能够在同一行的访问不会导致miss，但是列的访问
每4行就会出现一次新的替换，这样子计算下来无疑会超过miss限制。
考虑8*8的分成4*4的小块，那么我们想到利用B来访问（源于32*32对角线处理的思路），那么我们
将A的前4行的转置分别放入B的左上角和右上角4*4小块，然后A的左下角放入的同时，将B的右上角放到B的右下角，
这样子可以减少4*4次访问冲突。最后我们再将A的右下角转置放到B的右下角即可。

3. 60*68：
发现M和N不是2的若干次方了，也就是说此时没有什么比较优良的性质，那么我们首先考虑还是
按照第一题的做法分成8*8的块，miss数量比较高（1900+），但是已经基本达到及格线（1600+），
只需要尽可能地多分成8*8的块，剩下的分成4*4即可。
这里我们将右下角的56*64块分成若干个8*8的块，然后将左下角到左上角再到右上角的这一条分成若干个
4*4的块。这样子可以达到比较优秀的miss数。
*/
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"
#include <math.h>

int is_transpose(int M, int N, int A[N][M], int B[M][N]);
int min(int a, int b) { return a < b ? a : b; }

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */

char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, ii, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    if (N == 32)
    {
        for (ii = 0; ii < 32; ii += 8)
            for (j = 0; j < 32; j += 8)
            {
                i = ii + 7;
                if (ii == j)
                {
                    for (; i >= ii; i--)
                    {
                        tmp1 = A[i][j];
                        tmp2 = A[i][j + 1];
                        tmp3 = A[i][j + 2];
                        tmp4 = A[i][j + 3];
                        tmp5 = A[i][j + 4];
                        tmp6 = A[i][j + 5];
                        tmp7 = A[i][j + 6];
                        tmp8 = A[i][j + 7];

                        B[i][j] = tmp1;
                        B[i][j + 1] = tmp2;
                        B[i][j + 2] = tmp3;
                        B[i][j + 3] = tmp4;
                        B[i][j + 4] = tmp5;
                        B[i][j + 5] = tmp6;
                        B[i][j + 6] = tmp7;
                        B[i][j + 7] = tmp8;
                    }
                    for (i = ii; i < ii + 8; i++)
                        for (tmp2 = i + 1; tmp2 < ii + 8; tmp2++)
                        {
                            tmp1 = B[i][tmp2];
                            B[i][tmp2] = B[tmp2][i];
                            B[tmp2][i] = tmp1;
                        }
                }
                else
                {
                    for (; i >= ii; i--)
                    {
                        tmp1 = A[i][j];
                        tmp2 = A[i][j + 1];
                        tmp3 = A[i][j + 2];
                        tmp4 = A[i][j + 3];
                        tmp5 = A[i][j + 4];
                        tmp6 = A[i][j + 5];
                        tmp7 = A[i][j + 6];
                        tmp8 = A[i][j + 7];

                        B[j][i] = tmp1;
                        B[j + 1][i] = tmp2;
                        B[j + 2][i] = tmp3;
                        B[j + 3][i] = tmp4;
                        B[j + 4][i] = tmp5;
                        B[j + 5][i] = tmp6;
                        B[j + 6][i] = tmp7;
                        B[j + 7][i] = tmp8;
                    }
                }
            }
    }
    else if (N == 64)
    {
        for (ii = 0; ii < 64; ii += 8)
            for (j = 0; j < 64; j += 8)
            {
                for (i = ii; i < ii + 4; i++)
                {
                    tmp1 = A[i][j];
                    tmp2 = A[i][j + 1];
                    tmp3 = A[i][j + 2];
                    tmp4 = A[i][j + 3];
                    tmp5 = A[i][j + 4];
                    tmp6 = A[i][j + 5];
                    tmp7 = A[i][j + 6];
                    tmp8 = A[i][j + 7];

                    B[j][i] = tmp1;
                    B[j + 1][i] = tmp2;
                    B[j + 2][i] = tmp3;
                    B[j + 3][i] = tmp4;
                    B[j][i + 4] = tmp5;
                    B[j + 1][i + 4] = tmp6;
                    B[j + 2][i + 4] = tmp7;
                    B[j + 3][i + 4] = tmp8;
                }
                for (i = j; i < j + 4; i++)
                {
                    tmp1 = A[4 + ii][i];
                    tmp2 = A[5 + ii][i];
                    tmp3 = A[6 + ii][i];
                    tmp4 = A[7 + ii][i];
                    tmp5 = B[i][ii + 4];
                    tmp6 = B[i][ii + 5];
                    tmp7 = B[i][ii + 6];
                    tmp8 = B[i][ii + 7];

                    B[i][ii + 4] = tmp1;
                    B[i][ii + 5] = tmp2;
                    B[i][ii + 6] = tmp3;
                    B[i][ii + 7] = tmp4;
                    B[i + 4][ii] = tmp5;
                    B[i + 4][ii + 1] = tmp6;
                    B[i + 4][ii + 2] = tmp7;
                    B[i + 4][ii + 3] = tmp8;
                }
                for (i = ii + 4; i < ii + 8; i++)
                {
                    tmp1 = A[i][j + 4];
                    tmp2 = A[i][j + 5];
                    tmp3 = A[i][j + 6];
                    tmp4 = A[i][j + 7];

                    B[j + 4][i] = tmp1;
                    B[j + 5][i] = tmp2;
                    B[j + 6][i] = tmp3;
                    B[j + 7][i] = tmp4;
                }
            }
    }
    else
    {
        for (ii = 4; ii < 68; ii += 8)
            for (j = 4; j < 60; j += 8)
            {
                for (i = ii; i < ii + 8; i++)
                {
                    tmp1 = A[i][j];
                    tmp2 = A[i][j + 1];
                    tmp3 = A[i][j + 2];
                    tmp4 = A[i][j + 3];
                    tmp5 = A[i][j + 4];
                    tmp6 = A[i][j + 5];
                    tmp7 = A[i][j + 6];
                    tmp8 = A[i][j + 7];

                    B[j][i] = tmp1;
                    B[j + 1][i] = tmp2;
                    B[j + 2][i] = tmp3;
                    B[j + 3][i] = tmp4;
                    B[j + 4][i] = tmp5;
                    B[j + 5][i] = tmp6;
                    B[j + 6][i] = tmp7;
                    B[j + 7][i] = tmp8;
                }
            }
        for (j = 0; j < 60; j += 4)
            for (ii = 0; ii < (j < 4 ? 68 : 4); ii += 4)
            {
                for (i = ii; i < ii + 4; i++)
                {
                    tmp1 = A[i][j];
                    tmp2 = A[i][j + 1];
                    tmp3 = A[i][j + 2];
                    tmp4 = A[i][j + 3];

                    B[j][i] = tmp1;
                    B[j + 1][i] = tmp2;
                    B[j + 2][i] = tmp3;
                    B[j + 3][i] = tmp4;
                }
            }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; j++)
        {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}


//分块实现trans
char trans_block_desc[] = "Block to sovle";
void trans_block(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp, Bsize = 4, ii, jj, Asize = 3;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (ii = 0; ii < N; ii += Asize)
        for (jj = 0; jj < M; jj += Bsize)
        {
            for (i = ii; i < ii + Asize && i < N; i++)
                for (j = jj; j < jj + Bsize && j < M; j++)
                {
                    tmp = A[i][j];
                    B[j][i] = tmp;
                }
        }

    ENSURES(is_transpose(M, N, A, B));
}


//用一个函数来实现64*64的最小miss
char trans_6464_desc[] = "A 64*64 solution";
void trans_6464(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, Bsize = 16, ii;
    int tmp1, tmp2, tmp3, tmp4;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (ii = 0; ii < N; ii += Bsize)
        for (j = 0; j < M; j += 4)
        {
            int ilimit = ii + Bsize;
            for (i = ii; i < ilimit; i++)
            {
                tmp1 = A[i][j];
                tmp2 = A[i][j + 1];
                tmp3 = A[i][j + 2];
                tmp4 = A[i][j + 3];

                B[j][i] = tmp1;
                B[j + 1][i] = tmp2;
                B[j + 2][i] = tmp3;
                B[j + 3][i] = tmp4;
            }
        }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    // registerTransFunction(trans, trans_desc);
    // registerTransFunction(trans_block, trans_block_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; ++j)
        {
            if (A[i][j] != B[j][i])
            {
                return 0;
            }
        }
    }
    return 1;
}
