# Kubernetes Workshop

## Docker, Kubernetes & Istio Workshop
  
Docker is a program that performs OS-level virtualization also known as containerization. Docker creates a simple tooling and a universal packaging approach that bundles up your application and its dependencies inside a container. Docker containers can be used in development, staging to the production environment.

Kubernetes is an open source Container Orchestration System for automatic deployment, scaling, and management of Containerized application. Kubernetes gives you the freedom to take advantage of on-premise, hybrid or public cloud infrastructure. Kubernetes helps you to scale both horizontally and vertically depends on the load.

Kubernetes gives containers their own IP addresses and a single DNS name for a set of containers and can load-balance across them. Kubernetes Secrets helps you to store your sensitive information about the application such as passwords, OAuth tokens, and ssh keys.

Kubernetes progressively rolls out changes to your application or its configuration, while monitoring application health to ensure it doesn't kill all your instances at the same time. If something goes wrong, Kubernetes will rollback the change for you. 

Jenkins helps to create continuous integration and Continuous Delivery pipelines. It allows to write pipeline as code and supports distributed build environments.

Microservices Architecture adds complexity in terms of management, monitoring etc., which put the brakes on developers mindset when they want to switch over from Monolithic to Microservices based Architecture. Service Mesh helps over here along with Kubernetes with the Sidecar Pattern to streamline and simplify the communication, management, and monitoring of the Microservices.

## Shopping Portal Architecture - Kubernetes without Istio

To deploy Microservices example in kubernetes with ingress controller, simpliy run [k8_workshop_v1.0.sh](https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/k8_workshop_v1.0.sh). This script will create
 - [Shoppingportal namespace](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/infra)
 - [Persistent mysql container](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles)
 - [Deployment](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/microservice) (i.e product app, product review app) with various configuration
 - [Ingress](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/infra) controller which has routing rules
 
 You can deploy new version of app using [k8_workshop_v1.1.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_v1.1.sh). Also if you want to test canary deployment without Istio you can execute [k8_workshop_canary_with_v1.0.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_canary_with_v1.0.sh), this will show different version of UI in round robin fashion.


## Shopping Portal Architecture - Kubernetes with Istio

To deploy Microservices example in kubernetes with Istio, simpliy run [k8_workshop_istio_v1.0.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_istio_v1.0.sh). This script will create
 - [Shoppingportal namespace](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shopping-ns.yaml)
 - [Persistent mysql container](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles)
 - [Deployment](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/istio) (i.e product app, product review app) with various configuration
 - [Gateway](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-gw.yaml)
 - [Virtual Service](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-virtualservice.yaml)
 
 #### More details on ISTIO deployment click [here](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/)

## Kubernetes

<img src="https://img1.wsimg.com/isteam/ip/d5c5425e-ea61-41bb-a47e-8ce1293c41f9/b059f935-241a-4cbe-908c-f30388821e39.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1300,cg:true" alt="Kubernetes Architecture" />

## Istio Components

<img src="https://img1.wsimg.com/isteam/ip/d5c5425e-ea61-41bb-a47e-8ce1293c41f9/754c38e1-0aef-4d67-a0e5-767ab2491a87.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:2272,h:1136,cg:true" alt="Istio Components" />

## Linux Containers 

<img src="https://img1.wsimg.com/isteam/ip/d5c5425e-ea61-41bb-a47e-8ce1293c41f9/987cc423-d7c6-46a2-9d08-62c2caa906da.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:2272,h:1136,cg:true" lt="Linux Containers" />
