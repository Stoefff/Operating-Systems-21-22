### Exercise - 05.01.21

### Processes in C

### Образ на процес
* All the code and memory allocated for a process is called an image?
of a process

### Exec functions
* Changes the Image a process
* A program is run on a process with PID # 1. If we want PID # 1 to run the
code of another program we use Exec functions
* #include <unistd.h>
* int execl(const char* path, const char* arg, ...)
* int execlp(const char* file, const char* arg, ...)
* int execv(const char* path, char* const argv[])
* int execvp(const char* file, char* const argv[])
* l vs v - list(pointer) and vector(array) - how we pass the cmd arguments
* arg - the arguments with whom we run the wanted program - at least 2
arguments should be passed - **the name of the program is 0 element and the last
element should be 0 to indicate the end of the arguments**
* p - searches the name in $PATH, but if we give a full path it works too
* Without p - we should give the full path to the file
* Return value - int - -1 when it fails - **return nothing on success because
the code that called exec is replaced by code that exec was called with**

### Fork Function
* Creates a new process that is a child of the process that called the fork
and it is a copy of the mother process
* #include <sys/types.h>
* #include <unistd.h>
* pid_t fork(void)
* return value - -1 when error, PID of the fork process on success

### Wait function
* Waits until a copy(fork) finishes execution
* #include <sys/types.h>
* #include <sys/wait.h>
* pid_t wait(int* status)
* int* status - the return value of the finished process
* return value - -1 when error, the PID of the finished process
* Processes are executed parallel with a Multi-Threaded/Core CPU
* Stop the program execution - a way of synchronization
* **Check how sync works in depth - Google it**

**All the forked processes that are still running after their parent process
is finished, their parent becomes the init process**

### Exit function
* Exit/Finishes/Stops? a process
* #include <stdlib.h>
* void exit(int status)
* int status - the return status of the program - **How does it work ??**
* The same as `return` of the main

### PID getters
* Functions that return the PID
* #include <sys/types.h>
* #include <unistd.h>
* pid_t getpid(void) - get the current process PID
* pid_t getppid(void) - get the current process PARENT PID

### How does Linux shell works and some logic behind these functions
* When we run a command in bash it:
* Forks the bash process
* Changes the forks code with exec function to the wanted command
* We use wait and the PID getters for some more complex logic and sync
* We finish execution with the Exit function