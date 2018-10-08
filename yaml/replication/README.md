# Liveness

The kubelet uses liveness probes to know when to restart a Container. For example, liveness probes could catch a deadlock, where an application is running, but unable to make progress. 
Restarting a Container in such a state can help to make the application more available despite bugs.

##### Note: Make sure you have create shoppingportal namespace before executing below commands.

```
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/replication/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/replication/productreview-service.yaml
```

In deployment we have added replica as 3, you will be able to see 3 pods running .
```
kubectl get pods -n shoppingportal
```

