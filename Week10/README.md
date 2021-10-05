### Exercise - 15.12.20

## System calls for working with files in C

**All system calls return a int - if this number return -1 - its an error.
Returns 0 if success but could return more interesting numbers**

### What should we know about files in order to use them
* File name
* File start
* File length

### Open function
* #include <fcntl.h>
* Opens(and/or creates) a file
* #include <sys/types.h>
* #include <sys/stat.h>
* int open(const char* pathname, int flags [, mode_t mode])
* pathname - the full name of file
* flags -
* mode_t mode - file permission for when we create a file with open, not mandatory
* **Return the file descriptor of the file or -1 if error**

### Open Flags
* start with O_ to indicate that there are flags for Opening
* O_RDONLY - opens only for read
* 0_WRONLY - opens only for writing
* 0_RDWR - opens for both
* One the flags above should always be included
* 0_CREAT - create the file IF it does already exits
* 0_EXCL(exclude) - work only with 0_CREAT - check if the file we want to create
already exits and if it does it returns a error
* 0_TRUNC - if the file exits delete the all the content
* 0_APPEND - if the file exits start writing for the end of the file

### mode_t mode
* There are some constants but nobody uses them
* Work with permission numbers instead
* **These numbers should be passes as осмично with a 0 in front - DO NOT FORGET**

### Create Function
* int creat(const char* pathname, mode_t mode)
* Deprecated but supported - Do NOT use
* All functionality is supported by the the open flags

### Close function
#include <unistd.h>
int close(int fd) - затваря файл

### Read and write functions
* #include <unistd.h>
* ssize_t read(int fd, void* buf, size_t count)
* ssize_t write(int fd, const void* buf, size_t count)
* int fd - the file descriptor of the opened for use file
* void* buf - the part of the memory where we will read or write
* size_t count - the size of the buffer
* return value - -1 if error, the number of successfully read or written symbols
of the files or **The current position of the read/write index in the file**
* If we try to read/write more bytes from file that there are in it the size_t
count and return value are not the same - this way we can know if we reached the
end of the file ?
* Each time we read/write in a file we move the read/write index in it. The
next time we call the read/write functions we start from that position

### lseek  function
* #include <sys/types.h>
* #include <unistd.h>
* off_t lseek(int fd, off_t offset, int whence)
* int fd - file descriptor
* off_t offeset  could be positive or negative - for moving upwards or backwards
* int whence
* return value - -1 if error or returns the current position of the file

### Whence values
* SEEK_SET - the start of file
* SEEK_CURR - the current position
* SEEK_END - the end of file