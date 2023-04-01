# 0x00. Shell, basics
[# 0x00. Shell, basics](https://intranet.alxswe.com/projects/205)
1. The **"pwd"** command stands for "print working directory" and is used in Unix-based operating systems to display the current working directory. When you run the **"pwd"** command, the output will be the full path of the current directory you are in.
2. This **"c~"** will change the current working directory to the home directory of the user.
3. The **"ls"** command is used in Unix-based operating systems to list the files and directories in the current working directory. The **"-l"** option displays the results in a long format, showing detailed information about each file and directory, including permissions, owner, size, and modification time.
4. The **ls** command is used in Unix-based operating systems to list the files and directories in the current working directory. The **-la** option displays the results in a long format, showing detailed information about each file and directory, including permissions, owner, size, and modification time.
5. The **"ls"** command is used in Unix-based operating systems to list the files and directories in the current working directory. The **"-l"** option displays the results in a long format, showing detailed information about each file and directory, including permissions, owner, size, and modification time. The **"-a"** option displays hidden files and directories. The "-n" option displays the numeric user and group IDs instead of their names.
6. The **"mkdir"** command is used in Unix-based operating systems to create a new directory. In this example, the command "mkdir /tmp/my_first_directory" creates a new directory called "my_first_directory" inside the "/tmp" directory.
7. **"mv /tmp/betty /tmp/my_first_directory/"** move file betty from directory tmp to dir my_first_directory.
8. **"rm /tmp/my_first_directory/betty"** remove file betty from those directories
9. The **"rm"** command is used in Unix-based operating systems to remove or delete files and directories. The **"-r"** option is used to recursively remove directories and their contents. In this example, the command **"rm -r /tmp/my_first_directory"** removes the directory called **"my_first_directory"** inside the **"/tmp"** directory, along with any files or subdirectories it contains.
10. The **"mv"** command is used in Unix-based operating systems to move or rename files and directories. In this example, the command **"mv [A-Z]* /tmp/u/"** moves all files in the current working directory whose filenames start with an uppercase letter to the **"/tmp/u/"** directory. 
11. The command **"rm *~"** deletes all files in the current working directory that end with the character `~`
12. **"mkdir -p welcome/to/school"** creates the directories **`welcome/`**, **`welcome/to/`** and **`welcome/to/school`** in the current directory.
13. **"ls -amvp"** Write a command that lists all the files and directories of the current directory, separated by commas (`,`).

-   Directory names should end with a slash (`/`)  
    
-   Files and directories starting with a dot (`.`) should be listed  
    
-   The listing should be alpha ordered, except for the directories  `.`  and  `..`  which should be listed at the very beginning
-   Only digits and letters are used to sort; Digits should come first
-   You can assume that all the files we will test with will have at least one letter or one digit
-   The listing should end with a new line
14. Create a magic file  `school.mgc`  that can be used with the command  `file`  to detect  `School`  data files.  `School`  data files always contain the string  `SCHOOL`  at offset 0.

```
ubuntu@ip-172-31-63-244:/tmp/magic$ cp /bin/ls .
ubuntu@ip-172-31-63-244:/tmp/magic$ ls -la
total 268
drwxrwxr-x  2 ubuntu ubuntu   4096 Sep 20 02:44 .
drwxrwxrwt 11 root   root   139264 Sep 20 02:44 ..
-rw-r--r--  1 ubuntu ubuntu    496 Sep 20 02:42 school.mgc
-rwxr-xr-x  1 ubuntu ubuntu 110080 Sep 20 02:43 ls
-rw-rw-r--  1 ubuntu ubuntu     50 Sep 20 02:06 thisisaschoolfile
-rw-rw-r--  1 ubuntu ubuntu     30 Sep 20 02:16 thisisatextfile
ubuntu@ip-172-31-63-244:/tmp/magic$ file --mime-type -m school.mgc *
school.mgc:         application/octet-stream
ls:                    application/octet-stream
thisisaschoolfile: School
thisisatextfile:       text/plain
ubuntu@ip-172-31-63-244:/tmp/magic$ file -m school.mgc *
school.mgc:         data
ls:                    data
thisisaschoolfile: School data
thisisatextfile:       ASCII text
ubuntu@ip-172-31-63-244:/tmp/magic$
```
