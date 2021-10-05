### Exercise - Ilkov - 01.12.20

## Details about Bash

### Recap
* How to execute a file - bash file1
* OS server - ~/student/work - all the tasks

### Sleep
* Sleeps the bash process for certain amount of time
* Useful for sleep some commands for certain amount of time

### gcc / cc
* C compiler
* -o - name of the binary
* without -o - the program is compiler to a.out

### Set
* Set a value of a variable
* Useful for changing ENV vars on the fly in a bash program
* Set with no parametares/variable - set the parameters of the command line -
$1, $2, ..., $*

### Let
* Like expr
* We should write spaces
* Supports variable and operator =
* Works well with or without escaping

### Commands in bash - build in
* [ commands for ] - `test` the expression in the brackets - we should write spaces
* $ ( command) - like operator ``  but works with nesting without esacaping the  ` `
- redirects the stdout - Do NOT use the `` with $ ( ) - use one or the other

### Bash functions
* [function] name() { commnds } - without the [ ] - ?
* In functions we can pass arguments with $1, $2, ..., $*
* Does not return anything, but we have a return code
* The commands in the function can return value and this value is passed?

### Arrays
* name[index]
* We get the value with - ${d[2]}
* With * we get every value, but skips empty indexes !!!
* Get the count non empty indexes with ${#d[8]}
* There is a 0 index - **The 0 index of the array is the same as the name
of the array without index - $d = ${d[0]}**

### Read command
* Read a line from the std out
* read -a e - read a line and save every word as a index of the array e