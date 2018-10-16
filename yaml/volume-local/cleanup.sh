#!/bin/bash
kubectl delete sc omega-sc-local
kubectl delete pv omega-volume-local
kubectl delete pvc omega-pvc-local -n omega-local
kubectl delete deploy omega-local-deploy -n omega-local
kubectl get sc,pv,pvc,pods -n omega-local
kubectl delete ns omega-local
kubectl get ns
