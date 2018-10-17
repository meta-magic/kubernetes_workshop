# Application Tracing

For this demo we will be showing application Tracing using [JAEGER](https://www.jaegertracing.io/). When we install istio using by 
default Tracing Service and POD is installed in 'istio-system' namespace.

```
kubectl get pods -n istio-system
```
<img width="987" alt="screen shot 2018-10-17 at 6 54 42 pm" src="https://user-images.githubusercontent.com/23295769/47089386-6212ba80-d23e-11e8-950f-fcea3a2e9083.png">


```
kubectl get pods -n istio-system
```
<img width="1675" alt="screen shot 2018-10-17 at 6 51 26 pm" src="https://user-images.githubusercontent.com/23295769/47089337-427b9200-d23e-11e8-95fa-6e09446cdbed.png">


## Envoy and OpenTracing
OpenTracing is vendor neutral and therefore we also have to supply a tracer implementation. In our microservice example "Product and Product review" we are using JAEGER tracing.
Envoy uses [B3 propagation](https://istio.io/docs/tasks/telemetry/distributed-tracing/#understanding-what-happened) which is not enabled in Jaeger by default and has to be registered explicitly. 
Check [Product MS code](https://raw.githubusercontent.com/meta-magic/product_ms/master/src/main/java/com/metamagic/productms/ProductMsApplication.java) which explains how to enable.

## Jaeger console 
Note: Here we are doing port forwarding to 16686
````
kubectl port-forward -n istio-system $(kubectl get pod -n istio-system -l app=jaeger -o jsonpath='{.items[0].metadata.name}') 16686:16686 
````

### Once your all Microservice Application is running, execute below curl
```
curl http://192.168.99.100:31380/productms/product/catalogue
curl http://192.168.99.100:31380/productms/product/catalogue/1
```

Above curl should generate some data in Jaeger. So now open [Jaeger console](http://localhost:16686/search). 

### Select Product Microservice from Service
<img width="1679" alt="screen shot 2018-10-17 at 6 58 07 pm" src="https://user-images.githubusercontent.com/23295769/47089896-5f649500-d23f-11e8-983d-7f41cc86cf6f.png">

### Click on Particular Tracing - You will be able to see how request has be traveled from Ingress -> Proxy -> Product MS -> Product Review
<img width="1680" alt="screen shot 2018-10-17 at 6 58 38 pm" src="https://user-images.githubusercontent.com/23295769/47089972-8b801600-d23f-11e8-8770-cac989e021f0.png">

<img width="1678" alt="screen shot 2018-10-17 at 6 59 34 pm" src="https://user-images.githubusercontent.com/23295769/47090136-e31e8180-d23f-11e8-953f-c5767b1556cf.png">





