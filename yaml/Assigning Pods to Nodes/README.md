scenario: If you want to attach pods to the specific node

Step One: Attach label to the node
commands:
kubectl get nodes  ----------------->      to get the names of your cluster’s nodes.
kubectl label nodes <node-name> <label-key>=<label-value> --------------> Attach label to the node
kubectl get nodes --show-labels       ------------------------------> node now has a label

Step two:Add a nodeSelector field to your pod configuration
command: kubectl create -f pod-nginx-node.yml

ADVANCE:
pod-affinity --->https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
node-affinity---->https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
