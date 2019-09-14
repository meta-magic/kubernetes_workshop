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

[Open grafana](http://192.168.99.100:30002/?orgId=1) and see various metrics for different pods accross different namesapce. This will give you statistic of memory,cpu, file system usage.

To see some spike on pod execute below script
````
for((i=0;i<100;i++)); do curl http://192.168.99.100:31079/productreviewms/productreview/1; done
````

Product review deployed POD from shoppingportal namespace
<img width="1071" alt="screen shot 2018-10-06 at 11 45 30 am" src="https://user-images.githubusercontent.com/23295769/46568120-63e69f00-c95d-11e8-8e2b-0d0d478dd587.png">

Default deployed POD from kube-system namespace
<img width="961" alt="screen shot 2018-10-06 at 11 34 54 am" src="https://user-images.githubusercontent.com/23295769/46568009-ea01e600-c95b-11e8-92d9-62aacfec6adc.png">



