#!/bin/bash
#
# Copyright (c) METAMAGIC GLOBAL INC, USA
#
# This script will create the database setup
#

echo "Create Shoppingportal namespace"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/9-app-2-shopping-portal/shoppiny-ns.yaml

echo "Creating MYSQL(secret, volumn, deployment and service) in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-secret.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-pv.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-pvc.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-dep.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-4-Advanced/mysqlfiles/mysql-svc.yaml

echo "Create Prodcut Microservice secret, deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/microservice/product/product-secret.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/microservice/product/product-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/microservice/product/product-service.yaml

echo "Create Prodcut Review Microservice deployment and service in k8"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/microservice/productreview/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/microservice/productreview/productreview-service.yaml

echo "Create UI deployment and service in k8 for version 1.0"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/9-app-2-ui/k8uiworkshop-deploymentv1.0.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/9-app-2-ui/k8uiworkshop-service.yaml

echo "Creating ingress"
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/k8s-1-Basic/9-app-2-shopping-portal/shopping-ingress.yaml

echo "Thankyou Metamagic"


