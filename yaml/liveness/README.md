# Liveness

The kubelet uses liveness probes to know when to restart a Container. For example, liveness probes could catch a deadlock, where an application is running, but unable to make progress. 
Restarting a Container in such a state can help to make the application more available despite bugs.

```
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/liveness/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/liveness/productreview-service.yaml
```

In deployment we have added liveness, which hit HTTP request every 15 seconds. If this request fails consecutively pod is restarted 
