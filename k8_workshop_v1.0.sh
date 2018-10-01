#!/bin/bash
#
# Copyright (c) METAMAGIC GLOBAL INC, USA
#
# This script will create the database setup
#
FILE_PATH=$(pwd)

#kubectl delete ns shoppingportal
#kubectl delete svc mysql, productservice, productreviewservice, k8uiworkshopservice
#kubectl delete deploy mysql-dep,productms-deploy, productreview-deploy, k8uiworkshop-deploy
#kubectl delete secret mysecret, productmssecret
#kubectl delete pvc mysql-pv-claim
#kubectl delete pv mysql-pv-volume


echo "Cloning K8 Workshop code base.."
git clone https://github.com/meta-magic/kubernetes_workshop.git

cd $FILE_PATH/kubernetes_workshop/

echo "Cloning K8 UI code base.."
git clone https://github.com/meta-magic/k8_ui_workshop.git

echo "Cloning K8 Product MS code base.."
git clone https://github.com/meta-magic/product_ms.git

echo "Cloning K8 Product review code base.."
git clone https://github.com/meta-magic/product_review_ms.git

echo "Create Shoppingportal namespace"
kubectl create -f infra/shoppiny-ns.yml

echo "Creating ingress"
kubectl create -f infra/shopping-ingress.yml

echo "Creating MYSQL(secret, volumn, deployment and service) in k8"
kubectl create -f mysqlfiles/mysql-secret.yml
kubectl create -f mysqlfiles/mysql-pv.yml
kubectl create -f mysqlfiles/mysql-pvc.yml
kubectl create -f mysqlfiles/mysql-dep.yml
kubectl create -f mysqlfiles/mysql-svc.yml

echo "Create Prodcut Microservice secret, deployment and service in k8"
kubectl create -f product_ms/src/main/k8_yaml/product-secret.yaml
kubectl create -f product_ms/src/main/k8_yaml/product-deployment.yaml
kubectl create -f product_ms/src/main/k8_yaml/product-service.yaml

echo "Create Prodcut Review Microservice deployment and service in k8"
kubectl create -f product_review_ms/src/main/k8_yaml/productreview-deployment.yaml
kubectl create -f product_review_ms/src/main/k8_yaml/product-deployment.yaml
kubectl create -f product_review_ms/src/main/k8_yaml/productreview-service.yaml

echo "Create UI deployment and service in k8 for version 1.0"
kubectl create -f k8_ui_workshop/k8_yaml/k8uiworkshop-deploymentv1.0.yaml
kubectl create -f k8_ui_workshop/k8_yaml/k8uiworkshop-service.yaml



echo $PWD

