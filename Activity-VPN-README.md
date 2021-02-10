Activity :

Create VPN connection between two GCP custom mode VPC networks and test connectivity between two different instances located in diffrent networks


1. Create two custom vpc (vpc-1 , vpc2 ) in 2 different project(sushant-p-1 , sushant-p-2) in different region (us-central , asia-east)
2. Create 2 firewall in both the VPC
3. Create vm instance in each (vm-1 , vm-2)
4. Create static ip address (static-1 , static-2) in both project.
5. Create vpn tunnel and getway in both the project.
   Note: Remote peer ip : Enter static ip of another project
         key : sushantkey
         Route-based : Ip range of other project vpc
         
6. SSH into one of the vm and ping the other it will be successful.
          
