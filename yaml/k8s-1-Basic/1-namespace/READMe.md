# [Namespace](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)
Namespaces are intended for use in environments with many users spread across multiple teams, or projects.

#### Viewing namespaces
````
kubectl get namespaces
````
<img width="497" alt="screen shot 2018-10-06 at 1 16 13 pm" src="https://user-images.githubusercontent.com/23295769/46568886-0b69ce80-c96a-11e8-9837-5056feeb5530.png">

#### Create new namespace
````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/namespace/shoppiny-ns.yaml
````

New namespace "shoppingportal" added

<img width="449" alt="screen shot 2018-10-06 at 1 17 36 pm" src="https://user-images.githubusercontent.com/23295769/46568893-38b67c80-c96a-11e8-82cb-5c8504ba0f1b.png">

