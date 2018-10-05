kubectl apply -f install/kubernetes/helm/istio/templates/crds.yaml

kubectl apply -f install/kubernetes/istio-demo.yaml

curl http://192.168.99.100:31380/productreviewms/productreview/1
curl http://192.168.99.100:31380/productms/product/catalogue

curl http://192.168.99.100:31380/productreviewms/check/live

curl http://productreviewservice:8082/productreviewms/productreview/1

for ((i=0;i<20;i++)) ; do curl curl http://192.168.99.100:31380/productms/product/catalogue ; done

curl http://192.168.99.100:31380/productms/product/catalogue --header "end-user:metamagic"