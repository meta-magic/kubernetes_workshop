kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml

kubectl apply -f install/kubernetes/istio-demo.yaml

curl http://192.168.99.100:31380/productreviewms/productreview/1
curl http://192.168.99.100:31380/productms/product/catalogue

curl http://productreviewservice:8082/productreviewms/productreview/1