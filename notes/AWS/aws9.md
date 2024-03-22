load balencer
------------------------------
* why we use loadbalencers??
* it balences the load on servers.
* it uses round-robin algarithm
### routing algarithoms
-----------------------------
* firstcome-first serve(FCFS)
* shortest-job-next(SJN)
* roundrobbin(RR)
* multiple level quees
![preview](./images/aws41.png)
![preview](./images/aws47.png)
![preview](./images/aws50.png)

## application layer lb
----------------------------
* layer7 lb
* path/route based routing
* https,http added
## network layer lb
* layer3 lb
* network layer
* tcp,udp
* based on port number
## target groups
---------------------------------
![preview](./images/aws42.png)

* all the running/required servers are in target group.
## creating LB
--------------------------------------
* before creating loadbalencer create atleast two servers.install some webserver in these servers.
![preview](./images/aws44.png)
![preview](./images/aws45.png)

* create one application load balencer.
![preview](./images/aws43.png)
![preview](./images/aws46.png)
![preview](./images/aws48.png)
![preview](./images/aws49.png)
* create a target group
![preview](./images/aws51.png)
![preview](./images/aws52.png)
![preview](./images/aws53.png)
![preview](./images/aws54.png)
![preview](./images/aws55.png)
![preview](./images/aws56.png)
![preview](./images/aws57.png)
![preview](./images/aws58.png)
![preview](./images/aws59.png)
![preview](./images/aws60.png)
![preview](./images/aws61.png)
![preview](./images/aws62.png)
* cpy the DNS name and paste in any browser.
![preview](./images/aws63.png)
![preview](./images/aws64.png)
![preview](./images/aws65.png)
## listeners and rules
-------------------------------------------
![preview](./images/aws66.png)
![preview](./images/aws67.png)
![preview](./images/aws68.png)
![preview](./images/aws69.png)
* create one more rule
![preview](./images/aws70.png)
* set cloud watch alarms.for lb level monitering.
 








