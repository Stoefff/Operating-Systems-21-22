# List of all used commands throughout the course

Notes structure:
## Command
### What it does
* Common use case/flag 1
* Common use case/flag 2
* ...

## cd
### Changes directory
* cd /usr/home/
* cd ./Documents
* cd .. - go the the parent of current dir
* cd ~ - go to current user home
* cd - - go to the last opened directory

## pwd
### Prints the absolute path to the current directory
* pwd

## ls
### List current directory contents
* ls -l - more details about the file
* ls -a - includes hidden files(those that start with .)
* ls -d - info about the current directory, not its contents
* ls -i - display inode information

## `mkdir`
### Makes directories
* mkdir Foo

## rmdir
### Removes directories
* rmdir Foo/

## cp
### Copies a file
* cp ./foo.bar ../../Test/

## scp
### Secure copy - securely and remotely copies a files between 2 hosts
* scp s45384@astero.openfmi.net <remote path> <local path> - relative path supported

## mv
### Moves and/or renames a file
* mv ./foo.bar ../../Test/ - to move
* mv ./foo.bar ./bar.foo - to rename
* mv ./foo.bar ../../Test/bar.foo - to move and rename

## rm
### Deletes files and directories
* rm foo.bar
* rm -f foo.bar - force delete and stop prompt
* rm -r Foo/ - recursively delete everything in Foo/ and the dir

## touch
### Change file timestamp or create a file with current timestamp
* touch foo.bar - create file foo.bar if its non-existent
* touch -a foo.bar  - replaces atime with the current time
* touch -m foo.bar - replaces mtime with the current time
* touch -da foo.bar - replaces atime with the data provided

## man
### Manual for most of Linux commands and functionality
* man sudo
* man man

## apropos
### Searches for a keyword in all man pages
* apropos su
* apropos ls

## help
### Get help or instruction for a commands
* help su
* help pwd

## whatis
### Self-explanatory
* whatis sudo
* whatis ls

## type
### Checks whether a command is build in kernel or external
* type cd
* type sudo

## tty
### Prints the name of the terminal which is active
* tty

## id
### Prints the current user ID and GID
* id

## whoami
### Print the name of the current user
* whoami

## su
### Change user
* su - change user to root
* su stoefff - change user to stoefff
* su -l - provide environment

## sudo
### Execute a commands as other user
* sudo ls - defaults to root
* sudo -u stoefff ls

## chown
### Change owner of a file
* chwon root file.md

## chgrp
### Change group owner of a file
* chwgrp staff file.md

## chmod
### Change file mode bits / permissions
* chmod 0664 foo.txt - with UMASK
* chmod u=rw, g=rw, o=r foo.txt - direct instruction
* chmod u+x, g-w foo.txt - add/remove certain permission and keep rest
* chmod -R - recursively change all the files below the current?

## passwd
### Change the password of the current user, or any if root
* passwd

## ssh
### Remote login program using OpenSSH
* ssh s12345@astero.fmi.org

## umask
## ln, ln -s
## df ...
## du ...
## stat ...
## file
## cat
## more
## less
## head
## tail ...
## strings
## xdd