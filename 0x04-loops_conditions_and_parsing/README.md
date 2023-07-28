# 0x04-loops_conditions_and_parsing
## Shell scripts
### 0. Create a SSH RSA key pair
inside your directory you can generate your private and public key using `ssh-keygen -t rsa`
### 1. For Best School loop, 
### 2. While Best School loop
- Initialize variable 'a' with the value 1
- The while loop checks the condition [ $a -le 10 ], which means "while 'a' is less than or equal to 10."
- As long as the condition is true, the loop body will execute.
- In the loop body, the string "Best School" is printed using the echo command.
- After printing, the value of a is incremented by 1 using the ((a++)) expression.
- The loop goes back to the beginning, checks the condition again, and repeats the process until the condition becomes false (when 'a' exceeds 10).
### 3. Until Best School loop
### 4. If 9, say Hi!
when you run this bash script, it will print "Best School" ten times, and on the ninth iteration, it will print "Hi" as well. Each output will be on separate lines.
### 5. 4 bad luck, 8 is your chance
Each output will be on separate lines, and "bad luck" will be printed when the loop iterates with counter equal to 3, and "good luck" will be printed when counter is 7.
### 6. Superstitious numbers
when you run this bash script, it will print the numbers from 1 to 20, and for the values 4, 9, and 17, it will print additional lines with the corresponding "bad luck" messages from China, Japan, and Italy, respectively. Each output will be on separate lines.
### 7. Clock
when you run this script it dispalys time in hours and miniutesin between all in seperate lines
### 8. For ls
The cut command in Unix/Linux is used to extract sections of each line from a file or standard input (stdin) based on specified delimiter(s) or character positions.

	- Here's the breakdown of the cut -d '-' -f2 command:

- `cut`: This is the command itself, used for cutting sections from input lines.

- `-d '-'`: This option specifies the delimiter used to separate fields in each input line. In this case, the delimiter is set to the hyphen ('-'). This means that the cut command will treat the hyphen character as a separator, and it will split each line into fields based on hyphens.

- `-f2`: This option specifies the field number to be extracted from each line. The number after -f represents the field number. In this case, it is set to 2, which means the command will extract the second field from each line after splitting using the hyphen as the delimiter.
### 9. To file, or not to file
The outer if statement [ -e "school" ] checks if the file named "school" exists in the current directory.
Then, it checks if the file is not empty using the -s operator.
Next, it checks if the file is a regular file (not a directory or a special file) using the -f operator.
If the file "school" does not exist (outer if condition is false), the code inside the else block will execute.
### 10. FizzBuzz
when you run this bash script, it will print the FizzBuzz sequence for the numbers from 1 to 100, following the FizzBuzz rules.
### 11. Read and cut
- The while loop reads each line from the file "/etc/passwd" and stores it in the variable 'passwd'.
- Inside the loop, it uses the cut command to extract specific fields from the line read. The delimiter used for cutting is ':' (colon).
- The -f1,3,6 option specifies the fields to be extracted. In this case, it will extract the first field (username), third field (UID), and sixth field (home directory) from each line.
- The echo command is used to print the extracted fields on the terminal.
- The loop continues until all lines from the "/etc/passwd" file have been processed.
- The "/etc/passwd" file in Unix-like systems contains information about user accounts on the system. Each line represents a user account, and fields are separated by colons (':').

The extracted fields in the output will be displayed one line at a time, with the username, UID, and home directory separated by colons.
Note: Reading and displaying the contents of the "/etc/passwd" file is generally safe, as it contains basic information about user accounts. However, modifying this file without proper knowledge and permissions can cause issues with the system. Always exercise caution while working with system files.
### 12. Tell the story of passwd
The bash script you provided reads the "/etc/passwd" file line by line, splits each line using the colon (':') as the delimiter, and prints formatted information about each user. Let's break down the code:
	- The while loop reads each line from the file specified by the variable 'fname' (/etc/passwd).
	- The IFS=: sets the Internal Field Separator to ':' character, which is used by the read command to split the line into fields.
	- The read command reads the fields from the line and assigns them to variables f1, f2, f3, ..., f7 respectively, based on the delimiter (':').
	- Inside the loop, a series of printf commands are used to print formatted information about each user based on the extracted fields.
	- The formatted output contains information like username, primary group, home directory, shell, and more.
	- The printf "\n" statement adds a new line after printing each user's information.
	- The loop continues until all lines from the "/etc/passwd" file have been processed.
### 13. Let's parse Apache logs
When you run this script, awk command will read the "apache-access.log" file and extract fields based on space (' ') as the delimiter. Then, it will print the first and ninth fields of each line. Let's break down the command:
	- `awk: Invokes the awk command-line tool for text processing.
	- `-F' '`: Sets the field separator (delimiter) to space (' '). This tells awk to split the input into fields based on spaces.
	- `'{print $1, $9}'`: The action inside the single quotes is the instruction for what to do with each line of input. Here, print $1, $9 tells awk to print the first and ninth fields of each line.
	- apache-access.log: The input file, `"apache-access.log"`, that awk will read and process.
Please note that the actual content and structure of the "apache-access.log" file may vary depending on the configuration and logging format of your Apache web server. Make sure that the provided field numbers ($1 and $9) correspond to the desired information in your specific log file format. Additionally, you can modify the awk command as per your specific requirements for extracting and processing data from the log file.
### 14. Dig the data
- awk '{ print $1, $9 }' < apache-access.log: This command uses awk to extract the first and ninth fields from each line of the "apache-access.log" file. The fields are separated by spaces by default, and awk will print the first and ninth fields for each line.

- sort: The output of the awk command is then passed to the sort command, which sorts the lines in ascending order (alphabetical order for the first field, which contains IP addresses).

- uniq -c: The uniq command removes duplicate consecutive lines from the sorted output. The -c option is used to prefix each line with the count of occurrences.

- sort -nr: Finally, the output is passed to sort again, but this time with the -nr options. The -n option ensures a numeric sort, and the -r option sorts the lines in reverse order (descending order). This will sort the output based on the count of occurrences in descending order, showing the most frequent occurrences first.
For example, if the "apache-access.log" contains the following content:
```
192.168.0.1 - - [27/Jul/2023:12:34:56 +0000] "GET /page1 HTTP/1.1" 200 1234
192.168.0.2 - - [27/Jul/2023:12:35:01 +0000] "GET /page2 HTTP/1.1" 404 5678
192.168.0.1 - - [27/Jul/2023:12:36:02 +0000] "GET /page1 HTTP/1.1" 200 2345
192.168.0.3 - - [27/Jul/2023:12:37:15 +0000] "GET /page3 HTTP/1.1" 200 7890

```
The command will output:
```
   2 192.168.0.1
   1 192.168.0.3
   1 192.168.0.2

```
