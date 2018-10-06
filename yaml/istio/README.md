# [ISTIO](https://istio.io/docs/concepts/what-is-istio/)
### Connect, secure, control, and observe services.

Cloud platforms provide a wealth of benefits for the organizations that use them. There’s no denying, however, that adopting the cloud can put strains on DevOps teams. Developers must use microservices to architect for portability, meanwhile operators are managing extremely large hybrid and multi-cloud deployments. Istio lets you connect, secure, control, and observe services.

## Setup
- wget https://github.com/istio/istio/releases/download/1.0.2/istio-1.0.2-linux.tar.gz
- tar -xzvf istio-1.0.2-linux.tar.gz
- cd istio-1.0.2
- echo 'export PATH="$PATH:/home/ubuntu/istio-1.0.2/bin"' >> ~/.profile
- type "istioctl" to confirm path is setup properly

## Install
Apply CRDs:

```
kubectl apply -f ~/istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml
```
Wait a few seconds.

Option 1: with no mutual TLS authentication
```
kubectl apply -f ~/istio-1.0.2/install/kubernetes/istio-demo.yaml
```
Option 2: or with mutual TLS authentication
```
kubectl apply -f ~/istio-1.0.2/install/kubernetes/istio-demo-auth.yaml
```

#### Installation Verification

```
kubectl kubectl get pods -n istio-system
```


#### Below application YAML is setup with option 1

## Shopping Portal Demo App - Kubernetes with Istio
To deploy Microservices example in kubernetes with Istio, simpliy run [k8_workshop_istio_v1.0.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_istio_v1.0.sh). This script will create
 - [Shoppingportal namespace](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shopping-ns.yaml)
 - [Persistent mysql container](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles)
 - [Deployment](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/istio) (i.e product app, product review app) with various configuration
 - [Gateway](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-gw.yaml)
 - [Virtual Service](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-virtualservice.yaml)


## Test
Once you have executed 
