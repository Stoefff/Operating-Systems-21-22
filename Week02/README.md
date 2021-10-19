### Exercise - 12.10.21

## More Basics

### UMASK
* Umask command - sees the default Umask
* Binery operation & and inverse ~
* Default perms
    * 666 for files
    * 777 for dirs
* Default umask - 002

### Directory and file manipulation
* mkdir - makes a new dir
    * mkdir -p - creates all unknown dirs along the path
* mv - move a file
* cp - copy a file
    * move and rename functionality
* rm - remove a file, -r for recursive functionality
* rmdir - self - explanatory
* touch - used for changing time metadata, and creates new files if not present
    * ctime - last **metadata** info change
    * mtime - modify time
    * atime - acess time

### File system
* Sectors - lowest amount of memory that can be used
* Default sector size - 512 byte
* What we need for a file: metadata and data
* Inode - metadata that we already discussed with `ls -l`- around 128 bytes? -
C structure that contains the metadata
* DataBlock - the contents of the file
* Super-block - metadata about the filesystem

### File system building blocks
* inodes - they are numbered - uint32 type - 4B
* DataBlock - contains the sectors for the file data
    * Replaces sectors - its 4KB
    * number the same way as inodes
* What happens we run out of inodes space / we want large files:
* Mix nested / double indirect structure of ext2

### Data Blocks of directories
* Table like
* First column contains inode of containing file
* Second column contains the name of the file

**Metadata of files does not contain the name of file - but it contains
how much names of the file there are - link count**

### Some commands
* ls -li gets us the file inode number
* First colum after the permission of ls -l says how many links there are
* ln file newname - to create hardlinks
* ln -s file linkname - to create symlinks
* df, du, stat - for file system information

### Hard links vs symbolic links
* Hardlinks does not use space
* Cant create hardlinks on non existent files
* Directories cant create hardlinks to prevent cycles in the FS tree
* Directories have some hardlinks created by the OS - . and .. etc
* Symlinks use space
* Symlinks reference path to a file, can be outside the FS

**Linux does not care about file extensions - file command get us the type
of a file by examining it**

### Displaying files
* cat - displays file contents - but cat is smarter than that
* more - cat but with paging
* less - less is more xD - even more complex than more
* head and tail - get the first or last -n lines of a file
* tail +3, tail -f - very useful for real time debug info
* strings - display ASCII strings in a binary files
* xxd - hex representation of file contents + symbol placement data - **Important**