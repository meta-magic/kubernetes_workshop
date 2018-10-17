#!/bin/bash
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-omega-ns.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-storage.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-volume.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-pvc.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-omega-dep.yaml
kubectl get pv,pvc,sc,deploy,pods -n omega-aws
