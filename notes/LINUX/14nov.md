 ## Filesystem in Linux:
 ----------------------------
   *  / -Root directory
   *  C:/ - windows.
   
* root --> home directory for root user.
       --> similar to admistrator user in windows
	   
* home --> other users it is a home directory.
 
* bin --> will have programs(command) which can used by all users in the server.
* sbin --> super user binaries -> root users executable commands.
* tmp  --> temporary
* etc --> configuration files
   -  cat /etc/os-relese
   -  cat /etc/passwd
   - cat /etc/groups 
         
		 
* boot --> bootable files 
 
* var --> log files 
 
* lib --> library files.
 
 ## Basic commands:
 --------------
  * ls --> listing 
  * cat  --> display the file content
  * cd --> change directory
  * clear --> clear the screen
  * touch --> create empty file
  * pwd --> present working directory
 
 
 ## File type/extension
 -------------------
 * .txt --> text file
 * .pem -->
 * .ppk --> putty private key
 * .c  --> c language
 * .java --> java language
 *  .sh  --> shell scripting
 * .py --> python
 * .go --> go language
 * .php --> php language
 * .html --> html 
 * .xml --> xm files
 * .json --> java script object notation
 * .css --> cascading style sheets
 * .dll -->windows files
 * .js  --> java script
 * .zip --> zip file
 * .jar --> java archive file
 * .yaml --> yaml extension
 * .tf  --> terraform files
 * .servlet --> java servlet
 * .jsp --> java server pages
 
 
###  scenario: developer/someone asked share the content of the file "abc.txt"
 *   1. if you the path where this file is existing.
		* cd <path>
		* cat abc.txt
	 2. either check with team members or ask developer give me the complete path.
		     
* ex: hey loging to this server 10.179.2.45 then get the list of users in it.
	* cat /etc/passwd
	* cat /etc/os-relese
		
		
### UTC --> univeral time zone
### IST --> India time zone

## IST == UTC+5:30

* ls -l  --> long listing format
* ls -lr --> revere listing based on the file names.
* ls -lrt --> based time and files.