### Linux
-----

# 1. Open source softwares
     * free of cost
	 * Lixnux 
	    * ubuntu/Debian
	    * Redhat --> RHEL(Redhat Enterprize Linux)--paid version
		* CentOS -- Free OS
		* Oracle --> Oracle Linux/Unix
	    * HP  --> HP Linux
		* Amazon Linux --> amazon 
		
# 2. Enterprize version(licensed versions)
     * pay some amout and get it.
	 * ex: Microsoft, AWS,Azure,Gcp,IBM,Aliba,Oracle etc
	        
	 

# Task: Create Linux server into AWS and connect from window ?

  * EC2 instance : linux server
	- t2.micro --> 750hr
    - CPU --> cores -->1
	- memory -> GB -->1GB
	 a. create a server in aws
	 b. install putty into windows.
	 c. connect to aws server.
	    1. putty with ppk file.
		2. mobaXterm with pem file
		3. git bash
	*   syntax: ssh -i <pemfile> <username>@<ipaddress/dnsname>
		* ex: ssh -i devops18.pem ec2-user@35.163.221.196
	    
		PEM : Privacy Enhanced mail
		PPK: Putty Private Key
		
	
# windows: GUI(Graphical User interface)
 # Linux: command --> Linux commands(predefined programs)
 * everything in the linux is file and folders.
 * the folders will be called as directories in linux.