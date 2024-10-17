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
## Automation with Cron Jobs
* Cron jobs are scheduled tasks in Unix-like systems.
```
# Edit the crontab using 'crontab -e'
# This script will run every day at midnight
0 0 * * * /path/to/your/script.sh
```
## Managing Environment Variables
* Managing environment variables is crucial for configuration in DevOps
```sh
#!/bin/bash

# Define environment variables
export DATABASE_URL="mysql://username:password@localhost/database"
# Use environment variables in your scripts
echo "Database URL: $DATABASE_URL"
```
## Check web status
* checking the status of a web server. 
```sh
#!/bin/bash

# Define a function to check the status of a website
check_website() {
    local url="$1"
    local response=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    
    if [ "$response" == "200" ]; then
        echo "Website $url is up and running!"
    else
        echo "Website $url is down!"
    fi
}
# Call the function with a sample website
check_website "https://www.example.com"
```
* We use the `curl` command to send an HTTP request to the website.
* The `-s` flag makes curl operate in silent mode, suppressing progress and error messages.
* `-o /dev/null` discards the response body.
* `-w "%{http_code}"` instructs curl to print only the HTTP response code.
## Automate server monitoring
* Let’s create a script to automate server monitoring by checking CPU usage.
```sh
#!/bin/bash

# Get CPU usage percentage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "CPU Usage: $cpu_usage%"
```
* We use the `top` command to get CPU usage information.
* `top -bn1` runs top in batch mode for a single iteration.
* `grep "Cpu(s)"` extracts the line with CPU usage details.
* `awk '{print $2 + $4}'` calculates the sum of user and system CPU usage percentages.

## Monitor disk space
* Let’s create a script to automate server monitoring by checking disk space.
```sh
#!/bin/bash

# Set the threshold for disk usage (in percentage)
threshold=90
# Get the disk usage percentage
disk_usage=$(df -h / | tail -n 1 | awk '{print $5}' | sed 's/%//')
if [ "$disk_usage" -ge "$threshold" ]; then
    echo "Disk space is running low! Disk Usage: $disk_usage%"
else
    echo "Disk space is within acceptable limits. Disk Usage: $disk_usage%"
fi
```
* We set a `threshold` for disk usage (in this case, 90%).
* We use the df command to get disk usage information for the root filesystem `(/)`.
* `tail -n 1` extracts the last line of the df output.
* `awk '{print $5}'` extracts the fifth column, which contains the usage percentage.

# jenkins bckup script
* Create a shell script: Create a new shell script file with an .sh extension.
```sh
#!/bin/bash

# Variables
GIT_REPO="git@github.com:yourusername/jenkins-backups.git"
LOCAL_DIR="/path/to/local/backup/directory"
JENKINS_HOME="/var/lib/jenkins"
# Backup Jenkins job directory
cp -R "$JENKINS_HOME/jobs" "$LOCAL_DIR"
```
## upload the log files to s3 bucket by using shell scripts.
* first u need to install aws cli and configure aws.
```sh
#!/bin/bash

# Variables
SOURCE_DIR="/path/to/your/files"  # Directory or file to upload
BUCKET_NAME="your-s3-bucket-name"
S3_PATH="s3://${BUCKET_NAME}/path/in/bucket"
LOG_FILE="/var/log/s3_upload.log"  # Log file for script output

# Function to upload file(s) to S3
upload_to_s3() {
  echo "$(date): Starting upload..." >> $LOG_FILE
  
  # Uploading files or directories using aws s3 sync (can also use aws s3 cp for single files)
  aws s3 sync "$SOURCE_DIR" "$S3_PATH" --delete >> $LOG_FILE 2>&1
  
  if [ $? -eq 0 ]; then
    echo "$(date): Upload successful." >> $LOG_FILE
  else
    echo "$(date): Upload failed!" >> $LOG_FILE
    exit 1
  fi
}

# Call the upload function
upload_to_s3
```
* if we want to automate the script. then use crontab.
* open crontab editor
```
crontab -e
```
* Add a new cron job to run the script. For example, to run the script every day at midnight
```
0 0 * * * /path/to/your-script.sh
```

