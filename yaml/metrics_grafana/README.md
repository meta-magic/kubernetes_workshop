Download repo reference git https://github.com/kubernetes/heapster

Enable metrics in minikube : minikube addon enable metrics-server

- kubectl run php-apache --image=k8s.gcr.io/hpa-example --requests=cpu=200m --expose --port=80
- kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10
- kubectl get hpa or watch kubectl get hpa
- kubectl run -i --tty load-generator --image=busybox /bin/sh
  - while true; do wget -q -O- http://php-apache/; done


https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/
