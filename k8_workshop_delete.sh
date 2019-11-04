#!/bin/bash
#
# Copyright (c) METAMAGIC GLOBAL INC, USA
#
# This script will create the database setup
#
#!/bin/bash
#
# Copyright (c) METAMAGIC GLOBAL INC, USA
#
# This script will create the database setup
#

echo " MAKE SURE YOU HAVE EXECUTED BELOW YAML BEFORE..."

echo "Delete Virtual Service in k8"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/shoppingportal-virtualservice.yaml

echo "Delete Gateway  in k8"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/shoppingportal-gw.yaml


echo "Delete UI deployment and service in k8"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/ui/ui-v1.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/ui/ui-v2.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/ui/ui-destination.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/ui/ui-service.yaml

echo "Delete Product Review Microservice deployment and service in k8"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/productreview/productreview-v1.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/productreview/productreview-service.yaml

echo "Delete Product Microservice deployment and service in k8"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/product/product-v1.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/product/product-v2.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/product/product-service.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/product/product-destination.yaml

echo "Delete MYSQL(secret, volumn, deployment and service) in k8"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-dep.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/mysqlfiles/mysql-svc.yaml

echo "Delete Shoppingportal namespace"
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/shopping-ns.yaml
