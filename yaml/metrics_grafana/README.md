If you are using Minikube enable heapster, metrics-server . 

Using kubectl command execute below YAMLs i.e grafana, heapster, influxdb

##### Before executing below script make sure you have shoppingportal namespace
````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/metrics_grafana/grafana.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/metrics_grafana/heapster.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/metrics_grafana/influxdb.yaml
````
This will download container and start pod and service.

Once Everything is running execute below YAML 
````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/metrics_grafana/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/metrics_grafana/productreview-service.yaml
````

Open grafana and see various metrics for different pods accross different namesapce. This will give you statistic of memory,cpu, file system usage.




