#include<stdio.h>
int main(){
    char cbuf[110];
    int val = 0x72791e2a;
    char *s = cbuf + random() % 100;
    sprintf(s, "%.8x", val);
    printf("%s\n",s);
    //37 32 37 39 31 65 32 61
    return 0;
}