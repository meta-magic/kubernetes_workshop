#!/bin/bash
kubectl create -f v-local-omega-ns.yaml
kubectl create -f v-local-storage.yaml
kubectl create -f v-local-volume.yaml
kubectl create -f v-local-pvc.yaml
kubectl create -f v-local-pvc-dynamic.yaml
kubectl create -f v-local-dep.yaml
kubectl create -f v-local-dep-dynamic.yaml
kubectl get sc,pv,pvc,pods -n omega-local
