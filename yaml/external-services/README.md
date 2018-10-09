Scenario 1: Database outside cluster with IP address
1) create a service: type: clusterip without mention selectors eg:hello-without-selector-svc.yml
     This creates a service, but it doesn’t know where to send the traffic. 
     This allows you to manually create an Endpoints object that will receive traffic from this service.
2) create endpoint object ..
    eg:  endpoints.yml
Here the Endpoints manually defines the IP address for the database, and it uses the same name as the service. 

Now you can access the database with a simple connection string:

   mysql-without-container:3306

Scenario 2: Remotely hosted database with URI

 We have  hosted database service externally and we can connect  it the url string  (URI) 
  
  my.database.desire3d.com:3306
  
 Here “ExternalName” Kubernetes service, comes into picture ,it redirects traffic to the external service. 
This service does a simple CNAME redirection at the kernel level.

 eg:ext-name-svc.yml


