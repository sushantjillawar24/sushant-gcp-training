Activity 1.1
Deploy a web application on Compute Engine Instance using deployment Manager

Steps:

1. Create vpc auto mode.
2. Create firewall with source it to 0.0.0.0/0
3. Create deployment file to create vm instance ( sushant-instance) , with required parameters.
4. SSH into vm
5. Update it with sudo apt-get update
6. Install nginx web servier
7. Enter exit
8. Click on external ip address of vm 
9. Welcome to nginx page will appear in new tab of browser.
10. Again SSH in vm
11. go to var/www/html
12. Edit html file and add one heading 
13. Save and exit 
14. Refresh the tab 
15. New changes will be reflected.



Activity 1.2
Add high avaialbilty and scalabilty to the existing app deployed in compute engine

Steps:

1. Create two managed instance group and intance template with min. instance 1 and max. instance 3
2. Create vm instance using instance template in zone us-centeal1-a
3. Install nginx, On one instance keep the default html file and on another change the code 
4. Create load balancer and add the 2 MIG as backends.
5. Create another vm instance using different MIG in zone us-central1-b

For scalibility:

1. Install nginx on one of instance created by MIG
2. Add python scrip and install tool named cpu limit
3. Run the python file
4. Then the cpu utiliaztion exceeds its limit and new vm get created 

For availability :

1. As instances are already present in 2 different zones with nginx web-server installed
2. Delete one of the instance in one zone
3. Now visiting the same ip again leds us to new vm in another zone.
4. Thus having no downtime for the end user
