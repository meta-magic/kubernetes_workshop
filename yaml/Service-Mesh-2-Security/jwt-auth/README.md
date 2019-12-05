Before you start, run the following command to install python dependences.

```
pip install jwcrypto
```
Regenerate private key and JWKS (for developer use only)

 1)Regenerate private key using openssl
 
openssl genrsa -out key.pem 2048

2)Run gen-jwt.py with --jkws to create new public key set and demo JWT

    gen-jwt.py key.pem -jwks=./jwks.json --expire=3153600000 

### Verifying #####
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/shopping-ns.yaml
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/jwt-auth/shoppingportal-jwt-enable.yaml
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/jwt-auth/product-v1.yaml
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-1-Routing/product/product-service.yaml
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/jwt-auth/product-destination.yaml
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/Service-Mesh-2-Security/jwt-auth/shoppingportal-gw.yaml
- kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/istio/jwt-auth/shoppingportal-virtualservice-jwt.yaml


curl http://34.73.241.53/productms/check/live -s -o /dev/null -w "%{http_code}\n"
TOKEN=$(./gen-jwt.py key.pem --expire=300 --iss "testing@secure.istio.io")


 curl --header "Authorization: Bearer $TOKEN" http://34.73.241.53/productms/check/live -s -o /dev/null -w "%{http_code}\n"

