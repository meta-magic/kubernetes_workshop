##### Before executing below script make sure you have [shoppingportal](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/namespace) namespace & [mysql](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles) pods running

````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/product-secret.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/product-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/product-service.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/productreview-service.yaml
````

```
curl http://192.168.99.100:31625/productreviewms/productreview/1
curl http://192.168.99.100:32623/productms/product/catalogue/
curl http://192.168.99.100:32623/productms/product/catalogue/1
```
Note: Make sure to change the port before hitting curl command
