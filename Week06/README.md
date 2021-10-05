### Ilkov  - 10.11.20 - Practice 6

## Condition and Loops in Bash

### If condition
* Instead of statements and condition we check and run commands

### While and Until
* While - if the command after the while is done correctly we execute the
commands in the do - done
* until - the same as while but the command after until should fail in order
for the do - done to be called

### For
* for var [in list] - like for each

**Break and continue - supported but bad**

### Test command - commands for comparing
* strings - < and > could be unsupported, should be escaped
* integers - operators are called with -eq, -ne - check man
* string/var empty or not - -z - is it empty, -n - is it not empty
* files - check if the file/directory exist and some characteristics
* logical operators and true/false
* supports brackets and they should be escaped

**There should be spaces between every operator and commands for proper work**

