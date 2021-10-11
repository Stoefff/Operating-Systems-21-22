### Velin exercise - 05.10.21

## Operating systems basics

### Organization stuff
* velin@fmi.uni-sofia.bg
* Slides and additional materials avaliable on Moodle
* We gonna work on a VM - astero?
* There will be a info document with instructions on how to use the VM
* There are some hard tasks on a book which will be uploaded on moodle
* We should always do the ez tasks in home
* A document with all the grading info will be uploaded on moodle

### Some basic stuff
* What is a scheduler
* Unix is written in C
* Everything is a file
* SMALL single-purpose programs with the ability to pipe them together
* Configuration is in human-readable language - ASCII
* stdin, stdout, stderr - streams, file descriptors
* POSIX
* Filesystem Hierarchy Standard - **Check it at home**

**Actually when we say Linux we mean: Linux kernal with GNU programs**

### Login and Terminals
* Serial - oldschool
* Virtual - TTY, PuTTY
* shell - helps us interact with the kernel
    * build-in commands - directly from the kernal  
    * external commands - the kernel know where to find the executables and do them
    * type command - to check if its build in or external

### Session
* Metainfo about the session
* UserId and id commands - root is userid 0
* tty command - check which is the current terminal
* su and sudo commands

**Never execute sudo on the Astero VM**

### How to check command info
* man command - in the brackets we put the section in which we what to see the
program (context) - default section is 1
* help command or --help

**We will need to read the man page of every command we learn**

### File systems
* file - any object in the file system
* relative and absolute paths
* In Linux there is only one root, in Windows there are many - C:, D:
* cd, cd ~, cd - - return to the last used directory
* promt - can be configured
* pwd - current working directory
* . and .. - can be nested when using paths
* touch command

### ls
* ls -l - the low level format
* ls -l structure - **Learn it good**
* ls -a - list all including hidden files(that start with .)
* ls -d - list the metadata about the directory
* owner, group and other - UMASK, checking structure
* Directories files specifics - **if we want to delete a file, the user should
have write permission of the directory the file is in, not the file itself**
* Directory execute permission - if we can include the directory in paths for
traversing,if we know abouts its existence
* only regular files, directories and symlinks take space on the disk?

**Never use the stdout of ls to pass to the stdin of other programs.
Thats because the ls is in HUMAN readable format. There another program
that is in machine readable format to use**

### Default permissions
* 666 for files
* 777 for dirs

### Special permission with files
* Set UID upon execution - does exactly what is says, usecase: passwd command
* Set GroupUID upon execution- same thing but with group owner
* Sticky Bit - deprecated, does nothing

### Special permission with dir files
* Set UID upon execution - does nothing
* Set GroupUID upon execution - very interesting, gonna talk about it next lecture
* Sticky Bit - if you want to delete a files you should be owner of the file

### File ownership
* Only root can change it
* chown - change the file owner
* chgrp - change the file group owner
* chmod - change permissions, the most abstract way to change all the
permissions, use the permission numbers(UMASK?), -R - recursive