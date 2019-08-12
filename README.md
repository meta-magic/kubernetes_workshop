# Kubernetes Workshop

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/images/K8s-Workshop-Team.jpg" alt="Araf Karsh Hamid, Deepali Arvind, Ketan Gote" />

## Docker, Kubernetes & Istio Workshop
  
Docker is a program that performs OS-level virtualization also known as containerization. Docker creates a simple tooling and a universal packaging approach that bundles up your application and its dependencies inside a container. Docker containers can be used in development, staging to the production environment.

Kubernetes is an open source Container Orchestration System for automatic deployment, scaling, and management of Containerized application. Kubernetes gives you the freedom to take advantage of on-premise, hybrid or public cloud infrastructure. Kubernetes helps you to scale both horizontally and vertically depends on the load.

Kubernetes gives containers their own IP addresses and a single DNS name for a set of containers and can load-balance across them. Kubernetes Secrets helps you to store your sensitive information about the application such as passwords, OAuth tokens, and ssh keys.

Kubernetes progressively rolls out changes to your application or its configuration, while monitoring application health to ensure it doesn't kill all your instances at the same time. If something goes wrong, Kubernetes will rollback the change for you. 

Jenkins helps to create continuous integration and Continuous Delivery pipelines. It allows to write pipeline as code and supports distributed build environments.

Microservices Architecture adds complexity in terms of management, monitoring etc., which put the brakes on developers mindset when they want to switch over from Monolithic to Microservices based Architecture. Service Mesh helps over here along with Kubernetes with the Sidecar Pattern to streamline and simplify the communication, management, and monitoring of the Microservices.

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/images/K8s-Day-1-WS.jpg" alt="3 Day Kubernetes Workshop Schedule - Day 1" />

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/images/K8s-Day2.jpg" alt="3 Day Kubernetes Workshop Schedule - Day 2" />

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/images/K8s-Day3.jpg" alt="3 Day Kubernetes Workshop Schedule - Day 3" />

## Shopping Portal Architecture - Kubernetes without Istio

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Demo-1.jpg" alt="Shopping Portal Architecture" />

To deploy Microservices example in kubernetes with ingress controller, simpliy run [k8_workshop_v1.0.sh](https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/k8_workshop_v1.0.sh). This script will create
 - [Shoppingportal namespace](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/infra)
 - [Persistent mysql container](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles)
 - [Deployment](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/microservice) (i.e product app, product review app) with various configuration
 - [Ingress](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/infra) controller which has routing rules
 
 You can deploy new version of app using [k8_workshop_v1.1.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_v1.1.sh). Also if you want to test canary deployment without Istio you can execute [k8_workshop_canary_with_v1.0.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_canary_with_v1.0.sh), this will show different version of UI in round robin fashion.


## Shopping Portal Architecture - Kubernetes with Istio

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Demo-2.jpg" alt="Shopping Portal Architecture with Istio" />

To deploy Microservices example in kubernetes with Istio, simpliy run [k8_workshop_istio_v1.0.sh](https://github.com/meta-magic/kubernetes_workshop/blob/master/k8_workshop_istio_v1.0.sh). This script will create
 - [Shoppingportal namespace](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shopping-ns.yaml)
 - [Persistent mysql container](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/mysqlfiles)
 - [Deployment](https://github.com/meta-magic/kubernetes_workshop/tree/master/yaml/istio) (i.e product app, product review app) with various configuration
 - [Gateway](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-gw.yaml)
 - [Virtual Service](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/shoppingportal-virtualservice.yaml)
 
## Shopping Portal Architecture - Kubernetes with Istio : A/B Testing using Canary Deployment

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Demo-3.jpg" alt="Shopping Portal Architecture with Istio : A/B Testing" />

## Shopping Portal Architecture - Kubernetes with Istio : Beta Testing using Canary Deployment

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Demo-4.jpg" alt="Shopping Portal Architecture with Istio : Beta Testing" />

## Shopping Portal Architecture - Kubernetes with Istio : Blue Green Deployment

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Demo-5.jpg" alt="Shopping Portal Architecture with Istio : Blue Green Deployment" />

## Shopping Portal Architecture - Kubernetes with Istio : Fault Injection

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Demo-6.jpg" alt="Shopping Portal Architecture with Istio : Fault Injection" />

 #### More details on ISTIO deployment click [here](https://github.com/meta-magic/kubernetes_workshop/blob/master/yaml/istio/)

## Kubernetes

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/K8s-Arch.jpg" alt="Kubernetes Architecture" />

## Istio Components

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/Istio-Components.jpg" alt="Istio Components" />

## Linux Containers 

<img src="https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/diagrams/Linux-Containers.jpg" lt="Linux Containers" />

## License

Copyright © [MetaMagic Global Inc](http://www.metamagicglobal.com/), 2017-18. [MetaArivu Academia](http://www.metaarivu.com). All rights reserved.

Licensed under the [Apache 2.0](http://www.amexio.org/metamagic-showcase/license.html) License. Docs License By [CC 3.0](https://creativecommons.org/licenses/by/3.0/)

**Enjoy!**
