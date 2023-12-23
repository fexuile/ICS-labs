#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_NUM 10

int max(int a, int b) { return a>b?a:b; }

struct block{
    char buf[MAX_OBJECT_SIZE];
    char uri[MAXLINE];
    int Time;
    int len;
}cache[MAX_CACHE_NUM];

sem_t mutex, w;
int readcnt = 0;

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

int getmaxtime() {
    int Time = 0;
    for(int i = 0; i < MAX_CACHE_NUM; i++) 
        Time = max(Time, cache[i].Time);
    return Time;
}
int gettime() {
    int Time = cache[0].Time, index = 0;
    for(int i = 1; i < MAX_CACHE_NUM; i++) 
        if (Time > cache[i].Time) {
            Time = cache[i].Time;
            index = i;
        }
    return index;
}

void writer(char *buf, char *uri, int size) {
    int index;
    P(&w);
    index = gettime();
    cache[index].Time = getmaxtime() + 1;
    strcpy(cache[index].uri, uri);
    memcpy(cache[index].buf, buf, size);
    cache[index].len = size;
    V(&w);
    return;
}

char *reader(char *uri, int *len) {
    P(&mutex);
    readcnt++;
    if (readcnt == 1) P(&w);
    V(&mutex);
    char *buf = NULL;
    for (int i = 0; i < MAX_CACHE_NUM; i++) 
        if (!strcmp(uri, cache[i].uri)) {
            buf = (char *)Malloc(cache[i].len);
            memcpy(buf, cache[i].buf, cache[i].len);
            int Time = getmaxtime();
            cache[i].Time = Time + 1;
            *len = cache[i].len;
            break;
        }

    P(&mutex);
    readcnt--;
    if (!readcnt) V(&w);
    V(&mutex);
    return buf;
}

void parse_url(char *uri, char *hostname, char *path, char *port, char *request_head) {
    char *end, *st;
    sprintf(port, "80");
    st = strstr(uri, "//");
    if (st) st += 2;
    else st = uri;
    end = st;
    while (*end != ':' && *end != '/') end++;
    strncpy(hostname, st, end - st);
    hostname[end-st] = '\0';
    if (*end == ':') {
        st = end + 1; 
        end = strstr(end, "/");
        strncpy(port, st, end - st);
        port[end - st] = '\0';
        st = end;
    }
    end = uri + strlen(uri);
    strncpy(path, st, end - st);
    path[end-st] = '\0';
    sprintf(request_head, "GET %s HTTP/1.0\r\nHost: %s\r\n", path, hostname);
}

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
    parse_url(uri, hostname, path, port, request_head);
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

    signal(SIGPIPE, SIG_IGN);
    readcnt = 0;
    sem_init(&mutex, 0, 1);
    sem_init(&w, 0, 1);

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
