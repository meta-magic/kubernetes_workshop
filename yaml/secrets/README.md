# Secrets
Objects of type secret are intended to hold sensitive information, such as passwords, OAuth tokens, and ssh keys. Putting this information in a secret is safer and more flexible than putting it verbatim in a pod definition or in a docker image.

## Create secret file
```
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/secrets/productreview-secret.yaml
```

Above exectiong will set secret key with name as "secretkey", which can be access in deployment using enviorment. 

## Execute below deployment and service

```
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/secrets/productreview-deployment.yaml
kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/secrets/productreview-service.yaml
```

