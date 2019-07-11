Helm is a package manager for Kubernetes that allows developers and operators to more easily configure and deploy applications on Kubernetes clusters.

# DEMO 1:

# INSTALLING THE HELM CLIENT
The Helm client can be installed either from source, or from pre-built binary releases.

# From the Binary Releases

1) Download your desired version
2) Unpack it (tar -zxvf helm-v2.0.0-linux-amd64.tgz)
3) Find the helm binary in the unpacked directory, and move it to its desired destination (mv linux-amd64/helm /usr/local/bin/helm)

 # Installing Tiller
Tiller is a companion to the helm command that runs on your cluster

1) create service account for tiller

kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/helm_charts/sa-tiller.yml

2) bind the tiller serviceaccount to the cluster-admin role:

kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/helm_charts/cluster-role-binding-tiller.yml

3) we can run helm init, which installs Tiller on our cluster,

helm init --service-account tiller

4) to verify: check the tiller pod in kube-system namespace

kubectl get pods --namespace kube-system
............................................................................................................................

# helm commands:
 helm completion:  Generate autocompletions script for the specified shell (bash or zsh)
  helm create   :   create a new chart with the given name
  helm delete    :  given a release name, delete the release from Kubernetes
 helm dependency : manage a chart's dependencies
  helm fetch    :   download a chart from a repository and (optionally) unpack it in local directory
  helm get  :       download a named release
 helm help       : Help about any command
  helm history  :   fetch release history
 helm home   :     displays the location of HELM_HOME
  helm init   :     initialize Helm on both client and server
  helm inspect   :  inspect a chart
  helm install :    install a chart archive
 helm lint :       examines a chart for possible issues
  helm list     :   list releases
 helm package  :   package a chart directory into a chart archive
helm  plugin      :add, list, or remove Helm plugins
  helm repo :       add, list, remove, update, and index chart repositories
helm  reset   :    uninstalls Tiller from a cluster
  helm rollback :   roll back a release to a previous revision
  helm search  :  search for a keyword in charts
 helm serve   :    start a local http web server
 helm status  :    displays the status of the named release
  helm template   : locally render templates
helm  test    :    test a release
 helm upgrade   :  upgrade a release
 helm verify   :   verify that a chart at the given path has been signed and is valid
helm  version   :  print the client/server version information

