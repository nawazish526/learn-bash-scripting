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

# This is variable

EXAMPLE
#!/bin/bash

#--------variable--------------

name="Nawazish"
age=22

echo "hey $name here & I'm $age year old"


##Updating Variables

-> You can change the value of a variable by assigning it again:


EXAMPLE
#!/bin/bash
x=10
echo "print value of x $x"

x=4
echo "print value of updated x $x"
---

🔹 3. Storing Command Output in a Variable

-> Use command substitution like $(command) to store output:

HOSTNAME=$(hostname)
echo "Your system hostname is: $HOSTNAME"

EXAMPLE
#!/bin/bash

user=$(whoami)
dir=$(ls)

echo "current is $user"
echo "show my directory $dir"



---

🔹 4. Constant Variables (Read-Only)

To create a variable that cannot be changed:

readonly author="Nawaz"
echo "Written by: $author"

# Trying to change it will give an error:
# author="Someone Else"  ← ❌ Not allowed


---

🔹 5. Arrays in Bash

➤ What is an Array?

An array stores multiple values in a single variable.

➤ Declare an Array:

myArray=(1 20 30.5 Hello "Hey Buddy")

➤ Access Array Elements:

echo "${myArray[2]}"
# Output: 30.5 (3rd element, index starts from 0)


---

🛠️ 6. Useful Array Operations

✔ Print All Elements:

echo "${myArray[@]}"
# Output: 1 20 30.5 Hello Hey Buddy

✔ Get Length of Array:

echo "${#myArray[@]}"
# Output: 5

✔ Access a Range of Elements:

echo "${myArray[@]:2:2}"

# Output: 30.5 Hello
