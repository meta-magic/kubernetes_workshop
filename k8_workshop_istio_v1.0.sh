#!/bin/bash
#
# Copyright (c) METAMAGIC GLOBAL INC, USA
#
# This script will create the database setup
#

echo " MAKE SURE YOU HAVE EXECUTED BELOW YAML BEFORE..."

echo "install/kubernetes/helm/istio/templates/crds.yaml && install/kubernetes/istio-demo.yaml"

# kubectl create -f /Users/ketangote/opt/istio-1.0.2/install/kubernetes/helm/istio/templates/crds.yaml
# kubectl create -f /Users/ketangote/opt/istio-1.0.2/install/kubernetes/istio-demo.yaml 


echo "Create Shoppingportal namespace"
kubectl replace -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/shoppiny-ns.yaml

echo "Creating MYSQL(secret, volumn, deployment and service) in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-secret.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-pv.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-pvc.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-dep.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-svc.yaml

echo "Create Product Microservice deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/product-v1.yaml

echo "Create Product Review Microservice deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/productreview-v1.yaml

echo "Create UI deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/k8ui-v1.yaml

echo "Create Gateway Review Microservice deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/shoppoingportal-gw.yaml




echo $PWD

