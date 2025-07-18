# 🐧 Introduction to Linux Shell and Shell Scripting

## What is a Linux Shell?

-> A shell provides an environment for a user to execute commands and interact with the *kernel* of the operating system.

###  Types of Shells:
.bash
.sh
.ksh
.tsh
.fish
.zsh (Z-shell — an extended version of Bash)


## 🖥️ Useful Shell Commands

### ✅ Check your default shell:
```bash
echo $0
### There is also a alternative to check the default shell
echo $SHELL

### Check the version of your OS:
cat /etc/os-release 
### Check how many shells are available on your system:
cat /etc/shells

###  What is Shell Scripting?

-> Shell scripting is the process of writing a set of commands to automate tasks in a Linux environment.

Features:

A shell script consists of a set of commands to perform a task.

All commands are executed sequentially.

It can be used for:

File manipulation

Program execution

User interaction

Automation of repetitive tasks



### Shebang (#!)

->  #!/bin/bash

This is called a shebang.

It tells the operating system to use /bin/bash as the interpreter to run the script.

It’s not mandatory to use this, but it ensures the script runs with the specified shell instead of the default shell.
Giving File Permissions
-> To give *execute permission* to a script file located in any directory:

bash
chmod +x <filename>

Example:
chmod +x script.sh
🧾 2. Basic Script Structure

#!/bin/bash
echo "Hello World"

#!/bin/bash → This is the shebang line, which tells the OS to use the Bash shell.

.sh → The extension .sh is commonly used for shell scripts.
echo → This command is used to print output on the terminal.
🚀 3. Running a Script

✅ Step 1: Give execute permission

chmod +x script.sh

✅ Step 2: Run the script using one of these methods:

Method	When to Use

./script.sh	When you’ve given the file execute permission
/path/script.sh	To run the file located in a different directory
bash script.sh	Without giving execute permission


🔍 Check File Permissions
ls -ltn
💬 4. Comments in Bash
-> In Bash scripting, comments are lines or parts of lines in the code that are ignored by the shell during execution. They are used to explain what the script does, make the code more readable, or temporarily disable code.


 Single-line Comment

# This is a comment

Multiline Comments (2 ways)

: '
This is a
multiline comment
'

OR

<<comment
This is a
multiline comment
comment

## What is a Variable in Bash?
-> A variable is a way to store data (like numbers, strings, or paths) that can be used and reused throughout the script or terminal session.
