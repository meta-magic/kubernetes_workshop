#!/bin/bash
#
# Copyright (c) METAMAGIC GLOBAL INC, USA
#
#

echo " MAKE SURE YOU HAVE EXECUTED BELOW YAML BEFORE..."

echo "for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done && install/kubernetes/istio-demo.yaml"



echo "create Shoppingportal namespace"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/shopping-ns.yaml

echo "Creating MYSQL(secret, volumn, deployment and service) in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-secret.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-pv.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-pvc.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-dep.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-svc.yaml

echo "create Product Microservice deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/product/product-v1.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/product/product-v2.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/product/product-service.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/product/product-destination.yaml


echo "create Product Review Microservice deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/productreview/productreview-v1.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/productreview/productreview-service.yaml

echo "create UI deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/ui/ui-v1.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/ui/ui-v2.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/ui/ui-destination.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/ui/ui-service.yaml

echo "create Gateway  in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/shoppingportal-gw.yaml

echo "create Virtual Service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/shoppingportal-virtualservice.yaml




echo $PWD

