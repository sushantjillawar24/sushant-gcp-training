Activity 2.1

Deploy microservice app with UI, Backend service and a DB service on GKE cluster

Web-app name : guestbook , Which as has a text bar to enter name and submit button to add the entries.
Used redis as backend service to store the entries.

1. Create VPC named sushant-vpc
2. Create kubernetes cluster(sushant-cluster) with 3 nodes.
3. Connect the cluster using the command gcloud container clusters get-credentials sushant-cluster --zone us-central1-c --project gcp-training-01-303001
4. create 6 yaml file.

    ( guestbook-frontend.yaml , redis-master-service.yaml , redis-slave-service.yaml , 
      guestbook-frontend-service.yaml ,  redis-master.yaml ,  redis-slave.yaml  )
      
5. one for fornt-end , second for back-end redis ,third for redis slave 
6. Create service for each yaml file 
7. Use load balancer to access the app form internet.
8. Use load balancer external ip to access the app.



Activity 2.2 


Enabling Autoscaling, High Availability

1. Turn on the option of autoscaling while creating the cluster or use command 
   kubectl scale deploymnet front-end --replicas=10   to scale fornt-end deployment 
   
2. Turn on Regional option while creating cluster and choose multiple zone to make it high available.

Activity 2.3

Perform Rolling update to above Deployment.


1. Change image version of ,one of the container 
2. Here redis-master 's image has been changed to redis:5.0
3. Command used is kubectl set image deployment redis-master master=redis:5.0
4. As rolling update is default 
5. Now check the status by using command :
   kubectl rollout status deployment redis-master.
6. The output will show the process of updation.   





