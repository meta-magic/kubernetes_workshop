# Horizontal Pod Autoscaler

The Horizontal Pod Autoscaler automatically scales the number of pods in a replication controller, deployment or replica set based on observed CPU utilization

Note: Make sure you have shoppingportal namespace

#### Enable metric service before proceeding further, more detail can be found [metric-server](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/Logging-Monitoring/metrics_grafana)

Execute below YAML
````
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/8-autoscaling-hpa/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/8-autoscaling-hpa/productreview-service.yaml (Have set deployment with cpu and memory confugration)
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/8-autoscaling-hpa/product-horizontal-scaler.yaml
````

Generate request using below command
````
for((i=0;i<10000;i++)); do curl http://192.168.99.100:30160/productreviewms/check/live; done (PORT will change, so get service node port)
````

List the pod, where you will be able to find number of pod increase as CPU utilization is increased.
<img width="1255" alt="screen shot 2018-10-06 at 12 32 23 pm" src="https://user-images.githubusercontent.com/23295769/46568553-7f08dd00-c964-11e8-8bfa-c332f07cb9b3.png">

When CPU utilization is back to normal number of pods will come down automatically

<img width="1184" alt="screen shot 2018-10-06 at 12 38 32 pm" src="https://user-images.githubusercontent.com/23295769/46568568-c4c5a580-c964-11e8-87e9-00e78d326fd2.png">
