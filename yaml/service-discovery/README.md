##### Before executing below script make sure you have [shoppingportal](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/namespace) namespace & [mysql](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles) pods running

````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/product-secret.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/product-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/product-service.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/service-discovery/productreview-service.yaml
`````

