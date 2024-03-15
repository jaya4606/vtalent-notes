## 13_01_2024
-------------------
### Ansible configuration file:

* `locate` command.
![preview](./images/ansible12.png)
* in old versions of ansible we have a default config files,host files.
![preview](./images/ansible13.png)
* to create configuration file [Refere Here](https://docs.ansible.com/ansible/latest/reference_appendices/config.html)
* create a custom configuration file
``````
vi ansible.cfg
``````
* set a default path for inventory `hosts` path
![preview](./images/ansible14.png)
![preview](./images/ansible15.png)
![preview](./images/ansible16.png)
* ansible by default looks for configuration file.
![preview](./images/ansible17.png)
* if change inventery path.
![preview](./images/ansible18.png)
![preview](./images/ansible19.png)
![preview](./images/ansible20.png)
### Ansible configuration file:
--------------------------
``````
directory: /etc/ansible
configuration: ansible.cfg 
``````
### priority of ansible.cfg file
-------

* ANSIBLE_CONFIG (environment variable if set)

* ansible.cfg (in the current directory)

* ~/.ansible.cfg (in the home directory)

* /etc/ansible/ansible.cfg

### ansible inventory:
-----------------
* --> The place where we are adding remote server ip details that file is called inventory file.
    `/etc/ansible/hosts`
``````
ansible all -m ping
`````` 
  1. ansible loads the ansible.cfg file
  2. it looks for inventory "/etc/ansible/hosts"
  3. load the values from inventory file
  4. perform the ping operation on all the hosts present in inventory file.

  `export ANSIBLE_CONFIG="filepath"`

 * all == group + non-group


 ### adhoc commands:
  --------------

  `ansible <groups> -m <module> <args>`

 * python: modules

* ex: ansible all -m ping 

## main commands:

1. ansible
2. ansible-doc
3. ansible playbook
4. ansible vault 
5. ansible galaxy
