# Timeouts and Fault Injection

Note: All yamls are configured with shoppingportal namespace, So make sure you have shoppingportal namespace

````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/timeout-fault-injection/productreview-v1.yaml
kubectl create -f  https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/timeout-fault-injection/productreview-service.yaml
````

### Timeout
In this example we will show how you can demonstrate how can you add resiliency via timeouts in your application. First, we want to create a 1-second timeout to the vote service, so the product review service can stop listening if it is not responding within 1-second.

````
kubectl create -f  https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/timeout-fault-injection/timeout-virtualservice.yaml
````

We have added one endpoint which sleeps for 5 secs. 

````
curl http://192.168.99.100:32596/productreviewms/productreview/timeout/2
````

### Fault Injection
A route rule can specify one or more faults to inject while forwarding HTTP requests to the rule’s corresponding request destination. The faults can be either delays or aborts.

The following example introduces a 2 second delay in 100% of the requests product review microservice

````
kubectl create -f  https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/timeout-fault-injection/fault-injection-virtualservice.yaml
````
