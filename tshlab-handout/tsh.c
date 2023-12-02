/*
 * tsh - A tiny shell program with job control
 *
 * 2200013146@stu.pku.edu.cn 郭劲豪
 * 通过补全eval, sigchld_handler, sigint_handler, sigtstp_handler函数，来实现一个tiny shell。
 * shell可以执行6个内置指令，以及有外部路径的带参数函数。
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <errno.h>
#include <stdarg.h>

/* Misc manifest constants */
#define MAXLINE 1024   /* max line size */
#define MAXARGS 128    /* max args on a command line */
#define MAXJOBS 16     /* max jobs at any point in time */
#define MAXJID 1 << 16 /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/*
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Parsing states */
#define ST_NORMAL 0x0  /* next token is an argument */
#define ST_INFILE 0x1  /* next token is the input file */
#define ST_OUTFILE 0x2 /* next token is the output file */

/* Global variables */
extern char **environ;   /* defined in libc */
char prompt[] = "tsh> "; /* command line prompt (DO NOT CHANGE) */
int verbose = 0;         /* if true, print additional output */
int nextjid = 1;         /* next job ID to allocate */
char sbuf[MAXLINE];      /* for composing sprintf messages */

struct job_t
{                          /* The job struct */
    pid_t pid;             /* job PID */
    int jid;               /* job ID [1, 2, ...] */
    int state;             /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE]; /* command line */
};
struct job_t job_list[MAXJOBS]; /* The job list */

struct cmdline_tokens
{
    int argc;            /* Number of arguments */
    char *argv[MAXARGS]; /* The arguments list */
    char *infile;        /* The input file */
    char *outfile;       /* The output file */
    enum builtins_t
    { /* Indicates if argv[0] is a builtin command */
      BUILTIN_NONE,
      BUILTIN_QUIT,
      BUILTIN_JOBS,
      BUILTIN_BG,
      BUILTIN_FG,
      BUILTIN_KILL,
      BUILTIN_NOHUP
    } builtins;
};

/* End global variables */

/* Function prototypes */
void eval(char *cmdline);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, struct cmdline_tokens *tok);
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *job_list);
int maxjid(struct job_t *job_list);
int addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *job_list, pid_t pid);
pid_t fgpid(struct job_t *job_list);
struct job_t *getjobpid(struct job_t *job_list, pid_t pid);
struct job_t *getjobjid(struct job_t *job_list, int jid);
int pid2jid(pid_t pid);
void listjobs(struct job_t *job_list, int output_fd);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
ssize_t sio_puts(char s[]);
ssize_t sio_putl(long v);
ssize_t sio_put(const char *fmt, ...);
void sio_error(char s[]);

typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine
 */
int main(int argc, char **argv)
{
    char c;
    char cmdline[MAXLINE]; /* cmdline for fgets */
    int emit_prompt = 1;   /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF)
    {
        switch (c)
        {
        case 'h': /* print help message */
            usage();
            break;
        case 'v': /* emit additional diagnostic info */
            verbose = 1;
            break;
        case 'p':            /* don't print a prompt */
            emit_prompt = 0; /* handy for automatic testing */
            break;
        default:
            usage();
        }
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT, sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler); /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler); /* Terminated or stopped child */
    Signal(SIGTTIN, SIG_IGN);
    Signal(SIGTTOU, SIG_IGN);

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler);

    /* Initialize the job list */
    initjobs(job_list);

    /* Execute the shell's read/eval loop */
    while (1)
    {

        if (emit_prompt)
        {
            printf("%s", prompt);
            fflush(stdout);
        }
        if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
            app_error("fgets error");
        if (feof(stdin))
        {
            /* End of file (ctrl-d) */
            printf("\n");
            fflush(stdout);
            fflush(stderr);
            exit(0);
        }

        /* Remove the trailing newline */
        cmdline[strlen(cmdline) - 1] = '\0';

        /* Evaluate the command line */
        eval(cmdline);

        fflush(stdout);
        fflush(stdout);
    }

    exit(0); /* control never reaches here */
}

/*
 * eval - Evaluate the command line that the user has just typed in
 *
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.
 */

/*
brief: 这一段是错误包装函数，复制于csapp.c， 包含了在eval等函数中用到的系统函数的错误包装函数。
保证在出现特殊情况饿的时候会调用unix_error错误信息。
*/
pid_t Fork(void)
{
    pid_t pid;

    if ((pid = fork()) < 0)
        unix_error("Fork error");
    return pid;
}

void Execve(const char *filename, char *const argv[], char *const envp[])
{
    if (execve(filename, argv, envp) < 0)
        unix_error("Execve error");
}

void Kill(pid_t pid, int signum)
{
    int rc;

    if ((rc = kill(pid, signum)) < 0)
        unix_error("Kill error");
}

void Setpgid(pid_t pid, pid_t pgid)
{
    int rc;

    if ((rc = setpgid(pid, pgid)) < 0)
        unix_error("Setpgid error");
    return;
}

void Sigprocmask(int how, const sigset_t *set, sigset_t *oldset)
{
    if (sigprocmask(how, set, oldset) < 0)
        unix_error("Sigprocmask error");
    return;
}

void Sigemptyset(sigset_t *set)
{
    if (sigemptyset(set) < 0)
        unix_error("Sigemptyset error");
    return;
}

void Sigfillset(sigset_t *set)
{
    if (sigfillset(set) < 0)
        unix_error("Sigfillset error");
    return;
}

void Sigaddset(sigset_t *set, int signum)
{
    if (sigaddset(set, signum) < 0)
        unix_error("Sigaddset error");
    return;
}

int Sigsuspend(const sigset_t *set)
{
    int rc = sigsuspend(set); /* always returns -1 */
    if (errno != EINTR)
        unix_error("Sigsuspend error");
    return rc;
}

int Open(const char *pathname, int flags, mode_t mode)
{
    int rc;

    if ((rc = open(pathname, flags, mode)) < 0)
        unix_error("Open error");
    return rc;
}

int Dup2(int fd1, int fd2)
{
    int rc;

    if ((rc = dup2(fd1, fd2)) < 0)
        unix_error("Dup2 error");
    return rc;
}

void Close(int fd)
{
    int rc;

    if ((rc = close(fd)) < 0)
        unix_error("Close error");
}

/*
brief:
这一段是对于终端内置命令的实现，包括quit, jobs, fg, bg, kill和nohup的实现。
*/
/*
quit只需要简单的实现一个exit(0)即可。这样子就会使得shell进程结束。
*/
void build_quit()
{
    exit(0);
}

/*
已经通过listjobs来实现输出对应信息了，这里只需要把对应的文件描述符打开然后传递即可。
*/
void build_jobs(int fd)
{
    listjobs(job_list, fd);
    return;
}

/*
fg需要实现将一个进程重新启动至前端执行。
首先需要处理参数不合理的情况，在运行多次tshref就基本将不合法的考虑完全。
最后记得要在前台执行完再返回。
*/
void build_fg(int argc, char *argv[])
{
    if (argc == 1)
    {
        printf("fg command requires PID or %%jobid argument\n");
        return;
    }

    /*
     * 处理输入的job参数，分别对应%jid, 和pid这2中情况。
     */
    struct job_t *job;
    pid_t pid;
    sigset_t mask_all, prev_mask;
    Sigfillset(&mask_all);
    int st = 0, id = 0;
    if (argv[1][0] == '%')
        st++;
    if (argv[1][st] < '0' || argv[1][st] > '9')
    {
        printf("fg: argument must be a PID or %%jobid\n");
        return;
    }
    while (argv[1][st] >= '0' && argv[1][st] <= '9')
        id = id * 10 + argv[1][st++] - '0';
        
    if (st)
        job = getjobjid(job_list, id);
    else
        job = getjobpid(job_list, id);

        
    if (job == NULL)
    {
        if (st)
            printf("%%%d: No such job\n", id);
        else
            printf("(%d): No such process\n", id);
        return;
    }
    pid = job->pid;
    job->state = FG;
    Kill(pid, SIGCONT);
    Sigprocmask(SIG_SETMASK, &mask_all, &prev_mask);
    while (fgpid(job_list) == pid)
        Sigsuspend(&prev_mask);
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    return;
}

/*
实现和build_fg基本类似，只是最后不需要把当前job在前端执行完，只需要传递一个SIGCONT之后改变对应的state即可。
*/

void build_bg(int argc, char *argv[])
{
    if (argc == 1)
    {
        printf("bg command requires PID or %%jobid argument\n");
        return;
    }

    /*
     * 处理输入的job参数，分别对应%jid, 和pid这2中情况。
     */
    struct job_t *job;
    pid_t pid;
    int st = 0, id = 0;
    if (argv[1][0] == '%')
        st++;
    if (argv[1][st] < '0' || argv[1][st] > '9')
    {
        printf("bg: argument must be a PID or %%jobid\n");
        return;
    }
    while (argv[1][st] >= '0' && argv[1][st] <= '9')
        id = id * 10 + argv[1][st++] - '0';
        
    if (st)
        job = getjobjid(job_list, id);
    else
        job = getjobpid(job_list, id);

    if (job == NULL)
    {
        if (st)
            printf("%%%d: No such job\n", id);
        else
            printf("(%d): No such process\n", id);
        return;
    }
    pid = job->pid;
    job->state = BG;
    Kill(pid, SIGCONT);
    printf("[%d] (%d) %s\n", job->jid, job->pid, job->cmdline);
    return;
}

/*
这里kill的实现特别要注意，如果输入是负数则代表是一个进程组，要对其不合法输入进行一些特别的判断。
剩下的则是和build_fg等一样，注意最后传递的sig是SIGTERM即可。
*/

void build_kill(int argc, char *argv[])
{
    if (argc == 1)
    {
        printf("kill command requires PID or %%jobid argument\n");
        return;
    }

    /*
     * 处理输入的job参数，分别对应%jid, %-jid, -pid, 和pid这4中情况。
     */
    struct job_t *job;
    pid_t pid;
    int st = 0, id = 0, flag = 1;
    if (argv[1][0] == '%')
        st++;
    if (argv[1][st] == '-')
    {
        st++;
        flag = -1;
    }
    if (argv[1][st] < '0' || argv[1][st] > '9')
    {
        printf("kill: argument must be a PID or %%jobid\n");
        return;
    }
    while (argv[1][st] >= '0' && argv[1][st] <= '9')
        id = id * 10 + argv[1][st++] - '0';


    if (st)
        job = getjobjid(job_list, id);
    else
        job = getjobpid(job_list, id);
    if (job == NULL)
    {
        if (flag == -1)
        {
            if (st)
                printf("%%%d: No such job group\n", id);
            else
                printf("(%d): No such process group\n", id);
        }
        else
        {
            if (st)
                printf("%%%d: No such job\n", id);
            else
                printf("(%d): No such process\n", id);
        }
        return;
    }
    pid = job->pid;
    job->state = FG;
    Kill(flag * pid, SIGTERM);
}

/*
在writeup中写到command不会是内置指令，所以我们将不是内置指令的复制过来，然后添加一个SIGHUP的mask实现即可。
注意添加SIGHUP之后子进程也要保证有这个，所以得多添加一个中间态。
*/

void build_nohup(struct cmdline_tokens tok, char *cmdline, int bg)
{
    sigset_t mask_all, mask_one, prev_mask, mask_, mask_nohup;
    int fd1, fd2;
    pid_t pid;

    //初始化需要用到的mask
    Sigfillset(&mask_all);
    Sigemptyset(&mask_one);
    Sigemptyset(&mask_);
    Sigaddset(&mask_one, SIGHUP);
    Sigaddset(&mask_, SIGCHLD);
    Sigaddset(&mask_, SIGINT);
    Sigaddset(&mask_, SIGTSTP);
    Sigprocmask(SIG_BLOCK, &mask_one, &prev_mask);
    Sigprocmask(SIG_BLOCK, &mask_, &mask_nohup);

    if ((pid = Fork()) == 0)
    {
        /*
            这里在子进程中，打开输入和输出的重定向文件，然后用Dup2来进行修改。
            最后还要关闭对应的文件描述符。
            这里注意要setpgid，给子进程一个新的进程组。
        */
        if (tok.infile)
        {
            fd1 = Open(tok.infile, O_RDONLY, 0);
            Dup2(fd1, STDIN_FILENO);
        }
        if (tok.outfile)
        {
            fd2 = Open(tok.outfile, O_RDWR | O_CREAT, 0);
            Dup2(fd2, STDOUT_FILENO);
        }
        // 将设置的mask还原，然后将控制传递给子进程
        Sigprocmask(SIG_SETMASK, &mask_nohup, NULL);
        Setpgid(0, 0);
        Execve(tok.argv[1], tok.argv + 1, environ);
        if (fd1 != STDIN_FILENO)
            Close(fd1);
        if (fd2 != STDOUT_FILENO)
            Close(fd2);
        exit(0);
    }
    Sigprocmask(SIG_BLOCK, &mask_all, NULL);
    /*
        在addjob之前要设置mask，为了保证不会先删除一个没有被加入的job。
        然后如果是前端应用则需要用sigsuspend挂起，然后执行。
    */
    if (bg == 0)
    {
        addjob(job_list, pid, FG, cmdline);
        while (fgpid(job_list) == pid)
            Sigsuspend(&mask_nohup);
    }
    else
    {
        addjob(job_list, pid, BG, cmdline);
        Sigprocmask(SIG_BLOCK, &mask_all, NULL);
        printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
    }
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
}

void eval(char *cmdline)
{

    int bg; /* should the job run in bg or fg? */
    struct cmdline_tokens tok;
    pid_t pid;
    int fd1 = STDIN_FILENO, fd2 = STDOUT_FILENO;
    sigset_t mask_all, mask_one, prev_mask, mask_;

    /* Parse command line */
    bg = parseline(cmdline, &tok);

    //初始化需要用到的mask
    Sigfillset(&mask_all);
    Sigemptyset(&mask_one);
    Sigemptyset(&mask_);
    Sigaddset(&mask_one, SIGCHLD);
    Sigaddset(&mask_, SIGCHLD);
    Sigaddset(&mask_, SIGINT);
    Sigaddset(&mask_, SIGTSTP);
    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    if (tok.builtins == BUILTIN_NONE)
    {
        /*
            这里在子进程中，打开输入和输出的重定向文件，然后用Dup2来进行修改。
            最后还要关闭对应的文件描述符。
            这里注意要setpgid，给子进程一个新的进程组。
        */
        Sigprocmask(SIG_BLOCK, &mask_, &prev_mask);
        if ((pid = Fork()) == 0)
        {
            if (tok.infile)
            {
                fd1 = Open(tok.infile, O_RDONLY, 0);
                Dup2(fd1, STDIN_FILENO);
            }
            if (tok.outfile)
            {
                fd2 = Open(tok.outfile, O_RDWR | O_CREAT, 0);
                Dup2(fd2, STDOUT_FILENO);
            }
            // 将设置的mask还原，然后将控制传递给子进程
            Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
            Setpgid(0, 0);
            Execve(tok.argv[0], tok.argv, environ);
            if (fd1 != STDIN_FILENO)
                Close(fd1);
            if (fd2 != STDOUT_FILENO)
                Close(fd2);
            exit(0);
        }
        /*
        在addjob之前要设置mask，为了保证不会先删除一个没有被加入的job。
        然后如果是前端应用则需要用sigsuspend挂起，然后执行。
        */
        Sigprocmask(SIG_BLOCK, &mask_all, NULL);
        if (bg == 0)
        {
            addjob(job_list, pid, FG, cmdline);
            while (fgpid(job_list) == pid)
                Sigsuspend(&prev_mask);
        }
        else
        {
            addjob(job_list, pid, BG, cmdline);
            Sigprocmask(SIG_BLOCK, &mask_all, NULL);
            printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
        }
        Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    }
    else
    {
        /*
         * 内置函数，直接调用之前实现的函数来完成。
         */
        if (tok.builtins == BUILTIN_QUIT)
            build_quit();
        if (tok.builtins == BUILTIN_JOBS)
        {
            // 注意这里要实现jobs的输出重定向。
            if (tok.outfile)
                fd2 = Open(tok.outfile, O_RDWR | O_CREAT, 0);
            build_jobs(fd2);
            if (fd2 != STDOUT_FILENO)
                Close(fd2);
        }
        if (tok.builtins == BUILTIN_FG)
            build_fg(tok.argc, tok.argv);
        if (tok.builtins == BUILTIN_BG)
            build_bg(tok.argc, tok.argv);
        if (tok.builtins == BUILTIN_KILL)
            build_kill(tok.argc, tok.argv);
        if (tok.builtins == BUILTIN_NOHUP)
            build_nohup(tok, cmdline, bg);
    }
    return;
}

/*
 * parseline - Parse the command line and build the argv array.
 *
 * Parameters:
 *   cmdline:  The command line, in the form:
 *
 *                command [arguments...] [< infile] [> oufile] [&]
 *
 *   tok:      Pointer to a cmdline_tokens structure. The elements of this
 *             structure will be populated with the parsed tokens. Characters
 *             enclosed in single or double quotes are treated as a single
 *             argument.
 * Returns:
 *   1:        if the user has requested a BG job
 *   0:        if the user has requested a FG job
 *  -1:        if cmdline is incorrectly formatted
 *
 * Note:       The string elements of tok (e.g., argv[], infile, outfile)
 *             are statically allocated inside parseline() and will be
 *             overwritten the next time this function is invoked.
 */
int parseline(const char *cmdline, struct cmdline_tokens *tok)
{

    static char array[MAXLINE];        /* holds local copy of command line */
    const char delims[10] = " \t\r\n"; /* argument delimiters (white-space) */
    char *buf = array;                 /* ptr that traverses command line */
    char *next;                        /* ptr to the end of the current arg */
    char *endbuf;                      /* ptr to end of cmdline string */
    int is_bg;                         /* background job? */

    int parsing_state; /* indicates if the next token is the
                          input or output file */

    if (cmdline == NULL)
    {
        (void)fprintf(stderr, "Error: command line is NULL\n");
        return -1;
    }

    (void)strncpy(buf, cmdline, MAXLINE);
    endbuf = buf + strlen(buf);

    tok->infile = NULL;
    tok->outfile = NULL;

    /* Build the argv list */
    parsing_state = ST_NORMAL;
    tok->argc = 0;

    while (buf < endbuf)
    {
        /* Skip the white-spaces */
        buf += strspn(buf, delims);
        if (buf >= endbuf)
            break;

        /* Check for I/O redirection specifiers */
        if (*buf == '<')
        {
            if (tok->infile)
            {
                (void)fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_INFILE;
            buf++;
            continue;
        }
        if (*buf == '>')
        {
            if (tok->outfile)
            {
                (void)fprintf(stderr, "Error: Ambiguous I/O redirection\n");
                return -1;
            }
            parsing_state |= ST_OUTFILE;
            buf++;
            continue;
        }

        if (*buf == '\'' || *buf == '\"')
        {
            /* Detect quoted tokens */
            buf++;
            next = strchr(buf, *(buf - 1));
        }
        else
        {
            /* Find next delimiter */
            next = buf + strcspn(buf, delims);
        }

        if (next == NULL)
        {
            /* Returned by strchr(); this means that the closing
               quote was not found. */
            (void)fprintf(stderr, "Error: unmatched %c.\n", *(buf - 1));
            return -1;
        }

        /* Terminate the token */
        *next = '\0';

        /* Record the token as either the next argument or the i/o file */
        switch (parsing_state)
        {
        case ST_NORMAL:
            tok->argv[tok->argc++] = buf;
            break;
        case ST_INFILE:
            tok->infile = buf;
            break;
        case ST_OUTFILE:
            tok->outfile = buf;
            break;
        default:
            (void)fprintf(stderr, "Error: Ambiguous I/O redirection\n");
            return -1;
        }
        parsing_state = ST_NORMAL;

        /* Check if argv is full */
        if (tok->argc >= MAXARGS - 1)
            break;

        buf = next + 1;
    }

    if (parsing_state != ST_NORMAL)
    {
        (void)fprintf(stderr,
                      "Error: must provide file name for redirection\n");
        return -1;
    }

    /* The argument list must end with a NULL pointer */
    tok->argv[tok->argc] = NULL;

    if (tok->argc == 0) /* ignore blank line */
        return 1;

    if (!strcmp(tok->argv[0], "quit"))
    { /* quit command */
        tok->builtins = BUILTIN_QUIT;
    }
    else if (!strcmp(tok->argv[0], "jobs"))
    { /* jobs command */
        tok->builtins = BUILTIN_JOBS;
    }
    else if (!strcmp(tok->argv[0], "bg"))
    { /* bg command */
        tok->builtins = BUILTIN_BG;
    }
    else if (!strcmp(tok->argv[0], "fg"))
    { /* fg command */
        tok->builtins = BUILTIN_FG;
    }
    else if (!strcmp(tok->argv[0], "kill"))
    { /* kill command */
        tok->builtins = BUILTIN_KILL;
    }
    else if (!strcmp(tok->argv[0], "nohup"))
    { /* kill command */
        tok->builtins = BUILTIN_NOHUP;
    }
    else
    {
        tok->builtins = BUILTIN_NONE;
    }

    /* Should the job run in the background? */
    if ((is_bg = (*tok->argv[tok->argc - 1] == '&')) != 0)
        tok->argv[--tok->argc] = NULL;

    return is_bg;
}

/*****************
 * Signal handlers
 *****************/

/*
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP, SIGTSTP, SIGTTIN or SIGTTOU signal. The
 *     handler reaps all available zombie children, but doesn't wait
 *     for any other currently running children to terminate.
 */
void sigchld_handler(int sig)
{
    // 存储olderrno，最后恢复
    int olderrno = errno, status;
    sigset_t mask_all, prev_all;
    pid_t pid;
    Sigfillset(&mask_all);
    while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED | WCONTINUED)) > 0)
    {
        /*
            首先这里设置mask是是为了保证deletejob不会产生race。
            剩下的WNOHANG，WUNTRACED，WCONTINUED则是为了判断子进程是否继续，终止或者中断。
            然后根据status来输出对应的信息
            这里比较需要注意的是要用sio_put来输出，因为这是异步安全函数。
        */
        Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
        if (WIFEXITED(status))
            deletejob(job_list, pid);
        if (WIFSIGNALED(status))
        {
            sio_put("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid), pid, WTERMSIG(status));
            deletejob(job_list, pid);
        }
        if (WIFSTOPPED(status))
        {
            sio_put("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid, WSTOPSIG(status));
            struct job_t *job = getjobpid(job_list, pid);
            job->state = ST;
        }
        if (WIFCONTINUED(status))
        {
            struct job_t *job = getjobpid(job_list, pid);
            job->state = BG;
        }
    }
    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
    errno = olderrno;
    // 恢复mask和errno
    return;
}

/*
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.
 */
void sigint_handler(int sig)
{
    int olderrno = errno;
    sigset_t prev, mask_all;
    // 这一段设置sigprocmask是因为fgpid可能会和前台进程有竞争。
    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &prev);
    pid_t fg = fgpid(job_list);
    Sigprocmask(SIG_SETMASK, &prev, NULL);
     // 特别需要注意的是，这里需要调用-fg（writeup中有写）
    if (fg > 0)
        Kill(-fg, SIGINT);
    errno = olderrno;
    // 恢复错误信息
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.
 * 基本实现和sigint没有区别。
 */
void sigtstp_handler(int sig)
{
    int olderrno = errno;
    sigset_t prev, mask_all;
    // 这一段设置sigprocmask是因为fgpid可能会和前台进程有竞争。
    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &prev);
    pid_t fg = fgpid(job_list);
    Sigprocmask(SIG_SETMASK, &prev, NULL);
    // 特别需要注意的是，这里需要调用-fg（writeup中有写）
    if (fg > 0)
        Kill(-fg, SIGTSTP);
    errno = olderrno;
    // 恢复错误信息
    return;
}

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig)
{
    sio_error("Terminating after receipt of SIGQUIT signal\n");
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job)
{
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *job_list)
{
    int i;

    for (i = 0; i < MAXJOBS; i++)
        clearjob(&job_list[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *job_list)
{
    int i, max = 0;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid > max)
            max = job_list[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *job_list, pid_t pid, int state, char *cmdline)
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++)
    {
        if (job_list[i].pid == 0)
        {
            job_list[i].pid = pid;
            job_list[i].state = state;
            job_list[i].jid = nextjid++;
            if (nextjid > MAXJOBS)
                nextjid = 1;
            strcpy(job_list[i].cmdline, cmdline);
            if (verbose)
            {
                printf("Added job [%d] %d %s\n",
                       job_list[i].jid,
                       job_list[i].pid,
                       job_list[i].cmdline);
            }
            return 1;
        }
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *job_list, pid_t pid)
{
    int i;

    if (pid < 1)
        return 0;

    for (i = 0; i < MAXJOBS; i++)
    {
        if (job_list[i].pid == pid)
        {
            clearjob(&job_list[i]);
            nextjid = maxjid(job_list) + 1;
            return 1;
        }
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *job_list)
{
    int i;

    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].state == FG)
            return job_list[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *job_list, pid_t pid)
{
    int i;

    if (pid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid)
            return &job_list[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *job_list, int jid)
{
    int i;

    if (jid < 1)
        return NULL;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].jid == jid)
            return &job_list[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid)
{
    int i;

    if (pid < 1)
        return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (job_list[i].pid == pid)
        {
            return job_list[i].jid;
        }
    return 0;
}

/* listjobs - Print the job list */
void listjobs(struct job_t *job_list, int output_fd)
{
    int i;
    char buf[MAXLINE << 2];

    for (i = 0; i < MAXJOBS; i++)
    {
        memset(buf, '\0', MAXLINE);
        if (job_list[i].pid != 0)
        {
            sprintf(buf, "[%d] (%d) ", job_list[i].jid, job_list[i].pid);
            if (write(output_fd, buf, strlen(buf)) < 0)
            {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            switch (job_list[i].state)
            {
            case BG:
                sprintf(buf, "Running    ");
                break;
            case FG:
                sprintf(buf, "Foreground ");
                break;
            case ST:
                sprintf(buf, "Stopped    ");
                break;
            default:
                sprintf(buf, "listjobs: Internal error: job[%d].state=%d ",
                        i, job_list[i].state);
            }
            if (write(output_fd, buf, strlen(buf)) < 0)
            {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
            memset(buf, '\0', MAXLINE);
            sprintf(buf, "%s\n", job_list[i].cmdline);
            if (write(output_fd, buf, strlen(buf)) < 0)
            {
                fprintf(stderr, "Error writing to output file\n");
                exit(1);
            }
        }
    }
}
/******************************
 * end job list helper routines
 ******************************/

/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void)
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
void unix_error(char *msg)
{
    fprintf(stdout, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

/*
 * app_error - application-style error routine
 */
void app_error(char *msg)
{
    fprintf(stdout, "%s\n", msg);
    exit(1);
}

/* Private sio_functions */
/* sio_reverse - Reverse a string (from K&R) */
static void sio_reverse(char s[])
{
    int c, i, j;

    for (i = 0, j = strlen(s) - 1; i < j; i++, j--)
    {
        c = s[i];
        s[i] = s[j];
        s[j] = c;
    }
}

/* sio_ltoa - Convert long to base b string (from K&R) */
static void sio_ltoa(long v, char s[], int b)
{
    int c, i = 0;

    do
    {
        s[i++] = ((c = (v % b)) < 10) ? c + '0' : c - 10 + 'a';
    } while ((v /= b) > 0);
    s[i] = '\0';
    sio_reverse(s);
}

/* sio_strlen - Return length of string (from K&R) */
static size_t sio_strlen(const char s[])
{
    int i = 0;

    while (s[i] != '\0')
        ++i;
    return i;
}

/* sio_copy - Copy len chars from fmt to s (by Ding Rui) */
void sio_copy(char *s, const char *fmt, size_t len)
{
    if (!len)
        return;

    for (size_t i = 0; i < len; i++)
        s[i] = fmt[i];
}

/* Public Sio functions */
ssize_t sio_puts(char s[]) /* Put string */
{
    return write(STDOUT_FILENO, s, sio_strlen(s));
}

ssize_t sio_putl(long v) /* Put long */
{
    char s[128];

    sio_ltoa(v, s, 10); /* Based on K&R itoa() */
    return sio_puts(s);
}

ssize_t sio_put(const char *fmt, ...) // Put to the console. only understands %d
{
    va_list ap;
    char str[MAXLINE]; // formatted string
    char arg[128];
    const char *mess = "sio_put: Line too long!\n";
    int i = 0, j = 0;
    int sp = 0;
    int v;

    if (fmt == 0)
        return -1;

    va_start(ap, fmt);
    while (fmt[j])
    {
        if (fmt[j] != '%')
        {
            j++;
            continue;
        }

        sio_copy(str + sp, fmt + i, j - i);
        sp += j - i;

        switch (fmt[j + 1])
        {
        case 0:
            va_end(ap);
            if (sp >= MAXLINE)
            {
                write(STDOUT_FILENO, mess, sio_strlen(mess));
                return -1;
            }

            str[sp] = 0;
            return write(STDOUT_FILENO, str, sp);

        case 'd':
            v = va_arg(ap, int);
            sio_ltoa(v, arg, 10);
            sio_copy(str + sp, arg, sio_strlen(arg));
            sp += sio_strlen(arg);
            i = j + 2;
            j = i;
            break;

        case '%':
            sio_copy(str + sp, "%", 1);
            sp += 1;
            i = j + 2;
            j = i;
            break;

        default:
            sio_copy(str + sp, fmt + j, 2);
            sp += 2;
            i = j + 2;
            j = i;
            break;
        }
    } // end while

    sio_copy(str + sp, fmt + i, j - i);
    sp += j - i;

    va_end(ap);
    if (sp >= MAXLINE)
    {
        write(STDOUT_FILENO, mess, sio_strlen(mess));
        return -1;
    }

    str[sp] = 0;
    return write(STDOUT_FILENO, str, sp);
}

void sio_error(char s[]) /* Put error message and exit */
{
    sio_puts(s);
    _exit(1);
}

/*
 * Signal - wrapper for the sigaction function
 */
handler_t *Signal(int signum, handler_t *handler)
{
    struct sigaction action, old_action;

    action.sa_handler = handler;
    sigemptyset(&action.sa_mask); /* block sigs of type being handled */
    action.sa_flags = SA_RESTART; /* restart syscalls if possible */

    if (sigaction(signum, &action, &old_action) < 0)
        unix_error("Signal error");
    return (old_action.sa_handler);
}
