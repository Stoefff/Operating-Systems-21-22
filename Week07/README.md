### Exercise - Ilkov - 17.11.20

### Users, files, group, file permission and characteristics  

### Users and files in Linux
* Everything in Linux is a files
* Every fails is access by a certain user
* Users can be grouped with groups
* A used can be apart of many groups
* There are special features when working with more specials files

### Types of file permissions
* Read
* Write
* Execute

### LL output interpretention
* First symbol - shows the type of the file- - if its normal, d if directory
* First group of 3 symbols - the RWX permissions of the owner
* Second group of 3 symbols - the RWX permissions of the owner group
* Third group of 3 symbols - the RWX permission the every other user/group
* Owner of the file - the person who created it
* Owner group of the file - the group who

### Directory permissions
* R - to read whats in the directory
* W - to change the directory content
* X - to include the path of the directory in a working command? - check Google

### chmod command
* Purpose - change a files permission
* `u` `g` `o` `a` - owner user, group, other, all
* `+` `-` `=` - give and remove permissions, = means add all written permission
and remove all omited
* All permissions could be set easily with a осмично number

### Permissions represented with binary и осмично
* Permissions could be represented in binary such as 111 110 100
* This binary can be represented with осмично such as 0764

### Umask
* This umask is used when creating a new file to set the permission
* 0002 is the default for Linux for directories and executable, 0022 is the
default for the OS server, 0002 without all X permission is for text files

### chown and chgrp
* chown - changes the owner and the group of the file in modern Linux distros
* chgrp - changes only the group, used but still supported
* These commands can only be used of a administrators of the system in modern
Linux. Before owners of the files had access to this commands, but problems
arrose
** If owner transfers him ownership, he cant get ownership back
** The original owner could get more permissions if he transfer the ownership? 