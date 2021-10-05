### Exercise - 22.12.20

### File Descriptors
* Like an ID of the some opened file
* Start from 3 for the first opened file
* 0 - for the std in
* 1 - for the std out
* 2 - for the std err

### Handling errors
* Many times the errors are hidden and does not broke the execution of the code
* printf is not used for handling error - it does not write to the std err but
to the std out. There is a parameter that sets printf to write to the std err
* perror - void perror(const char * s) - writes to the std error and outputs
the massage s (what failed) : detail information about the error(how it failed)
* The detailed information about the error are standard - No such file or
directory, Permission denied - This info is fetched from the errno variable
* int errno - global var that have the code of the last system function that
failed
* The errno is matched to its error massage with the const char* sys_errlist[] -
its a also a global var - if errno is 3 - sys_errlist[errno] is its error massage 