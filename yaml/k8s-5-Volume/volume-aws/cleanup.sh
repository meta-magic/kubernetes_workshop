#!/bin/bash
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-storage.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-volume.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-pvc.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-omega-dep.yaml
kubectl delete -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-omega-ns.yaml

