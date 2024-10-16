## Basic Script Structure.
* A Bash script typically starts with a shebang line that specifies the interpreter to use.
```sh
#!/bin/bash
# This is a comment
echo "Hello, World!"
```
## Variables and Data Types
* In Bash, you can declare variables like
```
name="DevOps"
```
* Bash has no explicit data types. Variables are treated as strings by default, but you can perform arithmetic operations using `(( ))`.
```
count=5
((count++))
echo "Count: $count"
```
## Control Structures
* Control structures help you make decisions and control the flow of your scripts.
### If statements:
```sh
if [ "$var" == "value" ]; then
    echo "Variable is equal to 'value'"
fi
```
### For loops:
```sh
for fruit in apple banana cherry; do
    echo "I like $fruit"
done
```
### While loops:
```sh
count=0
while [ $count -lt 5 ]; do
    echo "Count: $count"
    ((count++))
done
```
## Functions
* Functions allow you to modularize your code.
```sh
say_hello() {
    echo "Hello, $1!"
}

say_hello "Alice"
```
## File Handling
* Dealing with files is common in DevOps tasks. You can read, write, and manipulate files in Bash.
### Reading a file:
```sh
while read line; do
    echo "Line: $line"
done < file.txt
```
### Writing to a file:
```sh
echo "Hello, World!" > output.txt
```
## Advanced Techniques
* `Command-line arguments`: Parse and use command-line arguments in your scripts.
* `Error handling`: Implement error-checking and logging in your scripts.
* `Regular expressions`: Use regex for pattern matching and text manipulation.
* `Piping and redirection`: Combine commands using pipes (|) and redirect input/output.

## Best Practices
* Use meaningful variable and function names.
* Comment your code to explain complex logic.
* Modularize your code with functions.
* Test your scripts thoroughly before deploying them.
* Use version control to track changes.

## Real-world Examples
* `Automating deployments`: Write scripts to deploy applications and configurations.
* `Server provisioning`: Automate server setup and configuration.
* `Backup and cleanup`: Schedule backups and perform routine system maintenance.
* `Monitoring and alerts`: Use scripts to monitor system metrics and send alerts.
* `Log analysis`: Analyze log files for errors and trends.

## 1.File Handling and Text Processing
### a. Searching for Keywords in Log Files
* Suppose you need to search for specific keywords in log files for troubleshooting.
```sh
#!/bin/bash

search_term="error"
log_file="application.log"
if grep -q "$search_term" "$log_file"; then
    echo "Found '$search_term' in $log_file"
else
    echo "No '$search_term' found in $log_file"
fi
```
### b. Parsing CSV Files
* You often need to work with CSV files in DevOps tasks.
```sh
#!/bin/bash

csv_file="data.csv"
while IFS=',' read -r col1 col2 col3; do
    echo "Column 1: $col1, Column 2: $col2, Column 3: $col3"
done < "$csv_file"
```
## 2.Automation and Server Management
### a. Automating Software Updates
* Automation is crucial in DevOps. You can create a script to update your system and installed packages.
```sh
#!/bin/bash

# Update system packages
sudo apt update
sudo apt upgrade -y
# Update Docker containers (if applicable)
docker-compose -f /path/to/docker-compose.yaml pull
docker-compose -f /path/to/docker-compose.yaml up -d
```
### b. Server Backup Script
* Creating regular backups of your servers is essential. Here’s a simple backup script using rsync.
```sh
#!/bin/bash

backup_dir="/backup"
source_dir="/var/www/html"
# Create a backup directory
mkdir -p "$backup_dir"
# Perform the backup
rsync -av "$source_dir" "$backup_dir"
```
## 3.Error Handling and Logging
### a. Logging Script Output
* Logging helps you keep track of script execution and errors.
```sh
#!/bin/bash

log_file="/var/log/my_script.log"
# Redirect stdout and stderr to a log file
exec > "$log_file" 2>&1
echo "Script started at $(date)"
# Your script logic here
echo "Script finished at $(date)"
```
### b. Error Handling
* You can add error handling to your scripts using set -e to exit on error
```sh
#!/bin/bash

set -e
# Your script logic here
# If an error occurs, the script will exit here
```