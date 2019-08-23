# [ISTIO](https://istio.io/docs/concepts/what-is-istio/)
### Connect, secure, control, and observe services.

Cloud platforms provide a wealth of benefits for the organizations that use them. There’s no denying, however, that adopting the cloud can put strains on DevOps teams. Developers must use microservices to architect for portability, meanwhile operators are managing extremely large hybrid and multi-cloud deployments. Istio lets you connect, secure, control, and observe services.

## Setup (https://istio.io/docs/setup/kubernetes/install/kubernetes/)
- wget https://github.com/istio/istio/releases/download/1.0.2/istio-1.0.2-linux.tar.gz
- tar -xzvf istio-1.0.2-linux.tar.gz
- cd istio-1.0.2
- echo 'export PATH="$PATH:/home/ubuntu/istio-1.2.4/bin"' >> ~/.profile
- type "istioctl" to confirm path is setup properly

##### If you are using minikube make sure you have enabled ingress, metric-server & heapster.

## Install
Apply CRDs:

```
$ kubectl apply -f ~/istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml
```
Wait a few seconds.

Option 1: with no mutual TLS authentication
```
$ kubectl apply -f ~/istio-1.0.2/install/kubernetes/istio-demo.yaml
```
Option 2: or with mutual TLS authentication
```
$ kubectl apply -f ~/istio-1.0.2/install/kubernetes/istio-demo-auth.yaml
```

#### Installation Verification

```
$ kubectl get pods -n istio-system
```
<img width="673" alt="screen shot 2018-10-06 at 9 42 24 am" src="https://user-images.githubusercontent.com/23295769/46567179-2af1fe80-c94c-11e8-8ea9-23e37c1f3f43.png">

```
$ kubectl get svc -n istio-system
```
<img width="1556" alt="screen shot 2018-10-06 at 9 37 26 am" src="https://user-images.githubusercontent.com/23295769/46567159-88d21680-c94b-11e8-9b76-f8fc5b9955b5.png">

##### Only when you see all PODS are running, proceed further. Generally on local it is going to take time depending on network and hardward. 

##### Below application YAML is setup with option 1

## Shopping Portal Demo App - Kubernetes with Istio
#### Setup
To deploy Microservices example in kubernetes with Istio, simpliy run [k8_workshop_istio_v1.0.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_istio_v1.0.sh). This script will create
 - [Shoppingportal namespace](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shopping-ns.yaml)
 - [Persistent mysql container](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles)
 - [Deployment](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/istio) (i.e product app, product review app) with various configuration. This application has two version deployment for [UI](kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/ui/ui-v2.yaml) and [Product Microservice](kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/product/product-v2.yaml)
 - [Gateway](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-gw.yaml)
 - [Virtual Service](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-virtualservice.yaml)

#### Verification of setup

<img width="754" alt="screen shot 2018-10-06 at 10 08 30 am" src="https://user-images.githubusercontent.com/23295769/46567382-d6508280-c94f-11e8-907d-198322ea0982.png">


## Test

#### UI A/B Testing - 2 different Versions app in Chrome and Firefox 

- Open Chrome and enter url http://192.168.99.100:31380/ui/#/catlogue
<img width="1095" alt="screen shot 2018-10-06 at 10 30 34 am" src="https://user-images.githubusercontent.com/23295769/46567608-3d236b00-c953-11e8-96ea-46987d0ba118.png">

- Open Firefox and enter url http://192.168.99.100:31380/ui/#/catlogue
<img width="1252" alt="screen shot 2018-10-06 at 10 32 57 am" src="https://user-images.githubusercontent.com/23295769/46567615-53312b80-c953-11e8-8406-cc979215de5f.png">

##### As we are having canary deploymentfor UI and based on USER agent we are redirecting traffic. You can see UI changes if it accessed from Chrome and Firefox. Please check YAML configuration of [New version](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/ui/ui-v2.yaml) and [Virtual Service](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-virtualservice.yaml)


#### Product microservice

```
curl http://192.168.99.100:31380/productms/check/live
curl http://192.168.99.100:31380/productms/product/catalogue
curl http://192.168.99.100:31380/productms/product/catalogue --header "end-user:metamagic"
```
Product microservice also has canary deployment, based on header request is redirected. If header "end-user:metamagic" is present it is redirected to version 2 of product. 


#### Product review microservice
```
curl http://192.168.99.100:31380/productreviewms/check/live
curl http://productreviewservice:8082/productreviewms/productreview/1
```




