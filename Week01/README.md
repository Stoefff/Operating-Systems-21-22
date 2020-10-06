## Lecture - The Skull - 06.10.20

### Books and resources
* Moodle - not all lectures are exam material
* Books from Moodle - The firsrt half of the Semaphores book
* Operating systems concepts - Abraham

### Important abstraction(parts) of a OS
* Process - a unit of work - a working program
* Files - a unit of storage - could be active(opened) or inactive - an array of
data
* A process could open and work with file(s)
* Namespace (пространство на имената) - File system ????
** URI
* Inter-process communication - IPC

**These 4 parts form the KERNEL of a OS**

### Broader definition of a OS
OS is a sum of:
* The Kernel
* User interface - shell, GUI
* Important programs

### System calls
System functions that connected the Kernel with the other programs. All these
functions are defined in the POSIX standard
* fork()
* exec() - with 3 parameters

### Man pages and shell


### Exercise - 06.10.20 - Ilkov

**The exercises will be held on Linux server only accessible on the machines
in FMI, some of the exercises will require us to be logged on the server
because there are group task**


### Resources
* fn10328@fmi.uni-sofia.bg - email
* newkis.fmi.uni-sofia.bg/~svi/os - resources and register - to do

### Course structure
* Up to December - shell and bash
* December to the end - C
** C required knowledge - Input <Name>, Hello <Name>

## File Systems

### Linux file system
* Tree like
* Root
* Parents / Child
* Files and Directories(again files)

### Types of directories
* Normal files
* Special files

### Special files
* Directories
* Links/Symlinks/Shortcuts

**Linux file system is CASE SENSITIVE**

**Linux does not use file extentions, unlike Linux. Only the programs that run
on Linux can distinguish between**

### File names
* Short Name - only the name of the file
** main.cpp
* Full Name - The path of file + the name
** /home/Stoefff/Documents/main.cpp or ~/Documents/main.cpp

### Paths
* Absolute paths - from the root to the files
** /home/Stoefff/Documents/OS.pdf
* Relatives paths - from a certain directory to the file e.g. ~(Home)
and /(Current directory)
** Current Directory is: Stoefff => Documents/OS.pdf

### Special Symbols
* / - root
* ~ - home
* . - current directory
* .. - the previous directory

### Root directories
* /bin - binaries and executables
* /etc - configuration
* /dev - files for the hardware and devices
* /home - the home folders for all the users
* many more that are not important for this course

### Some important shell commands
* exit - exit the shell proccess
* pwd - print working directory
* cd - change directory
* ls - list all the things in the current directories

### SSH
* Connection done with Putty
* Username: student
* Password: student