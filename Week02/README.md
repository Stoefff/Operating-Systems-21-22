### Exercise - 12.10.21

## More Basics

### UMASK
* Umask command - sees the default Umask
* Binery operation and inverse
* 022 - for normal files
* 000 - for dirs

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
* Metadata - we already discussed - we call it **INODE - around 128 bytes? -
C structure that contains the metadata**
* Data - the contents of the file

### File system building blocks
* Super-block - metadata about the filesystem
* inodes - the are numbered
    * we keep the numbers in uint32 type - 4B
* DataBlock - contais the sectors for the file data
    * Replaces sectors - its 4KB
    * number the same way as inodes
* What happens we run out of inodes space / we want large files
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
* df, du, stat

### Hardlinks vs symlinks
* Hardlinks does not use space
* Cant create hardlinks on non existent files
* Directories cant create hardlinks to prevent cycles in the tree
* Directories have some hardlinks created by the OS - . and .. etc
* Symlinks use space
* Symlinks reference path to a file, can be outside the FS

**Linux does not care about file extentions  file command get us the type
of a file by examining it**

### Displaying files
* cat - displays file contents - but cat is more smart than that
* more - cat but with paging
* less - less is more xD - even more complex than more
* head and tail - get the first or last -n lines of a file
* tail +3, tail -f - very useful for real time debug info
* strings - display ASCII strings in a binary files
* xxd - hex representation of file contents + symbol placement data - **Important**