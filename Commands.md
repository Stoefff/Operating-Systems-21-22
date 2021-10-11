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

## mkdir
## touch
## cp
## mv
## scp

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
## Change user
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