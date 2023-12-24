/*
郭劲豪 2200013146@stu.pku.edu.cn
*/
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_NUM 10

int max(int a, int b) { return a>b?a:b; }

/*
A struct designed for cache implement. sem_t for avoiding races.
*/
struct block{
    char buf[MAX_OBJECT_SIZE];
    char uri[MAXLINE];
    int Time;
    int len;
    sem_t mutex, w;
    int readcnt;
}cache[MAX_CACHE_NUM];

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

/*
get max time and min time index, preparing for the lru.
*/
int getmaxtime() {
    int Time = 0;
    for(int i = 0; i < MAX_CACHE_NUM; i++) 
        Time = max(Time, cache[i].Time);
    return Time;
}
int gettime() {
    int index = 0;
    for(int i = 1; i < MAX_CACHE_NUM; i++) 
        if (cache[index].Time > cache[i].Time) 
            index = i;
    return index;
}

/*
reader & writer is a easy function for read data and write data to the cache.
*/
void writer(char *buf, char *uri, int size) {
    int index;
    index = gettime();
    P(&cache[index].w);
    cache[index].Time = getmaxtime() + 1;
    strcpy(cache[index].uri, uri);
    memcpy(cache[index].buf, buf, size);
    cache[index].len = size;
    V(&cache[index].w);
    return;
}

/*
carefully to use P and V functions to modify the data in cache. Otherwise the race will occur.
*/
char *reader(char *uri, int *len) {
    char *buf = NULL;
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        P(&cache[i].mutex);
        cache[i].readcnt++;
        if (cache[i].readcnt == 1) P(&cache[i].w);
        V(&cache[i].mutex);
        if (!strcmp(uri, cache[i].uri)) {
            buf = (char *)Malloc(cache[i].len);
            memcpy(buf, cache[i].buf, cache[i].len);
            int Time = getmaxtime();
            cache[i].Time = Time + 1;
            *len = cache[i].len;
            P(&cache[i].mutex);
            cache[i].readcnt--;
            if (!cache[i].readcnt) V(&cache[i].w);
            V(&cache[i].mutex);
            break;
        }
        P(&cache[i].mutex);
        cache[i].readcnt--;
        if (!cache[i].readcnt) V(&cache[i].w);
        V(&cache[i].mutex);
    }
    return buf;
}


/*
parseline the url, spliting it into three part, and output the request_head.
*/
int parse_url(char *uri, char *hostname, char *path, char *port, char *request_head) {
    char *end, *st, *End;
    End = uri + strlen(uri);
    sprintf(port, "80");
    st = strstr(uri, "//");
    if (st) st += 2;
    else st = uri;
    end = st;
    while (*end != ':' && *end != '/' && end < End) end++;
    if(end == End) return -1;
    strncpy(hostname, st, end - st);
    hostname[end-st] = '\0';
    if (*end == ':') {
        st = end + 1; 
        end = strstr(end, "/");
        if (end == NULL) return -1;
        strncpy(port, st, end - st);
        port[end - st] = '\0';
        st = end;
    }
    strncpy(path, st, End - st);
    path[End-st] = '\0';
    sprintf(request_head, "GET %s HTTP/1.0\r\nHost: %s\r\n", path, hostname);
    return 1;
}

/*
output other request that unchanged.
*/
void printRequestHeader(rio_t *rio, int fd) {
    char buf[MAXLINE];
    sprintf(buf, "%s", user_agent_hdr);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Connection: close\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Proxy-Connection: close\r\n");
    Rio_writen(fd, buf, strlen(buf));

    do{
        Rio_readlineb(rio, buf, MAXLINE);
        if(!strncmp(buf, "Connection", 10) ||
           !strncmp(buf, "Proxy-Connection", 16) ||
           !strncmp(buf, "User-Agent", 10) ||
           !strncmp(buf, "Host", 4)) continue;
        Rio_writen(fd, buf, strlen(buf));
    }while (strcmp(buf, "\r\n"));
}


/*
Attention: use readnb to read binary file and ASCII file as well.
*/
void writeback(int clientfd, int serverfd, char *uri) {
    char buf[MAXLINE], cache_buf[MAX_OBJECT_SIZE];
    rio_t rio;
    int len, size = 0;
    Rio_readinitb(&rio, serverfd);
    while ((len = Rio_readnb(&rio, buf, MAXLINE)) > 0) {
        size += len;
        if (size <= MAX_OBJECT_SIZE) 
            memcpy(cache_buf + size - len, buf, len);
        Rio_writen(clientfd, buf, len);
    }
    if (size <= MAX_OBJECT_SIZE) writer(cache_buf, uri, size);
}

/*
if fd < 0 :then return ( increase robust )
Use RIO functions to increase robust.
*/
void doit(int fd) {
    rio_t rio;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], path[MAXLINE], port[MAXLINE], request_head[MAXLINE];
    char *cache_buf;
    int serverfd, len;
    if (fd < 0) 
        return;

    Rio_readinitb(&rio, fd);
    Rio_readlineb(&rio, buf, MAXLINE);

    if(sscanf(buf, "%s %s %s", method, uri, version) < 3) return;
    if(strcmp(method, "GET") != 0) {
        printf("Proxy does implement this method\n");
        return;
    }
    cache_buf = reader(uri, &len);
    if (cache_buf != NULL){
        Rio_writen(fd, cache_buf, len);
        Free(cache_buf);
        return;
    }
    /*
    robust of uri format, return -1 if illegal.
    */
    if (parse_url(uri, hostname, path, port, request_head) < 0){ 
        printf("Uri format error\n");
        return;
    }
    serverfd = Open_clientfd(hostname, port);
    if (serverfd < 0){
        return;
    }
    Rio_writen(serverfd, request_head, strlen(request_head));
    printRequestHeader(&rio, serverfd);
    writeback(fd, serverfd, uri);

    Close(serverfd);
}

void *thread(void *vargp) {
    int connfd = *(int *)(vargp);
    pthread_detach(pthread_self());
    free(vargp);
    doit(connfd);
    Close(connfd);
    return NULL;
}

int main(int argc, char *argv[]) {
    int listenfd;
    pthread_t tid;
    int *connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

/*
initalizing the cache and ignore SIGPIPE signal.
*/
    signal(SIGPIPE, SIG_IGN);
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        cache[i].readcnt = 0;
        sem_init(&cache[i].mutex, 0, 1);
        sem_init(&cache[i].w, 0, 1);
    }

    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }
    listenfd = Open_listenfd(argv[1]);
    while(1) {
        clientlen = sizeof(clientaddr);
        connfd = (int *)Malloc(sizeof(int));
        *connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *) &clientaddr, clientlen, hostname, MAXLINE, port, MAXLINE, 0);
        Pthread_create(&tid, NULL, thread, connfd);
    }
    return 0;
}
