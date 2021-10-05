### Ilkov - 03.11.20

### Command procedures - Командни процедури
* Not only Bash files
* Commands are written on a new line
* Commands can be written on a same line with a ;
* Cannot be execute just with ./filename
* Execute with sh or bash filename

### Text editors
* Vi/Vim

### Vim text editor modes
* Entry/Insert - every key entry is written
* Edit - most key change something in the file
* Command - more complex commands that save, open new files, do something with
a big portion of the file
* Cannot switch directly from Entry to Command mode - we should always go
though the Edit mode
* ~ - symbol for empty line

### Some commands and keys
* Esc - change to Edit mode
* : - change from Edit to Command mode
* h j k l keys - arrow keys, we move with them
* Arrow keys work as intended in most cases
* 0 - go at the start of a line
* $ - go at the end of a line
* w - go to the start of next word
* e - go the end of a word or the next word if already at the end
* b - go back a word
* W E B - does almost the same thing but words are distinguesed with ! & * etc
* Cntr + F - goes one screen forward
* Cntr + B - goes one screen backwards
* 5 G - go to line 5 - ??
* i - insert - before the cursor
* a - append - after the cursor
* I - insert at the start of the line - 0i
* A - insert at the end of the line - $a
* o - open new line after the current
* O - open new lIne before the current
* x - delete the current symbol
* X - delete the symbol before the current
* d - + key - delete the symbol to the chosen place (e.g. $ 0 w b c)
* D - delete the whole line
* c - like d + insta Insert mode to fast change something
* C - c$
* cc - ?
* r - replace a symbol
* R - replace many symbol
* u - undo -
* U - undo every change to a line up until we firstly stepped on a line

**Every of the commands can be executed multiple time a time when we write a
number + the command**

* / - find a word after the cursor
* ? - find a word before the cursor
* / + n - find the next word
* / + N - find the next word above
* write - save the changes to the file
* quit - exit
* quit! - force exit
* edit - save the changes to a different file (and delete the old?)
* Z - write + quit