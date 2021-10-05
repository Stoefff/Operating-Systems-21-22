### Ilkov  - 24.11.20

## Processes

### Definition
* A program while being executed
* All process have an PID while working
* They have names - the name of the program

### Образ на процеса - image of the process
* All the data around the process - memory, values, etc
* All processes have parents process besides the root process
* Init process - the root process - with PID of 1

### Deamons
* Processes thats name ends with ..d are most likely deamons
* Check the Hackman repo for correct definition
* A process that always works and it is in the background
* sshd deamon - what does it do

### Processes structure
* Tree like - parents and childs
* When you execute a program with Bash - the processes are generated are childs
of the Bash process

### ps command
* General info about the precesses at the foreground
* Second column - TTY - the terminal where the process is started
* -f - full information about the processes
* PPID - parent PID
* C - status process ???
* STIME - start time
* Group leaders - when a process name starts with `-` - leaders and roles - **RESEARCH**
* -e - every process started even those in the background
* -u [list of users] - show all the processes of the list of users

### Kill command
* Used for sending signals
* Signal - a mechanism for Inter Process Communication (IPC)
* All signals have numbers and names
* kill [PID] - send default signal to the prcess with the PID - number 15 for
stopping this process - Terminate Signal
* kill -[signal number] [PID]
* Signal number 9 - Kill process - forcefully stop - not recommended because of
memory leaks
* Kill command stop all the children of the process
* We can send signal only to OUR processes - otherwise the system wont let us

### Sleep command
* Puts a process on hold for certain amount of time

### Finger command
* Like who commands but insted of TTY information, we gen the user full info -
Name and user groups