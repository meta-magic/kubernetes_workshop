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
    1. helm completion:  Generate autocompletions script for the specified shell (bash or zsh)
    2.   helm create   :   create a new chart with the given name
    3.   helm delete    :  given a release name, delete the release from Kubernetes
    4.  helm dependency : manage a chart's dependencies
    5.   helm fetch    :   download a chart from a repository and (optionally) unpack it in local directory
    6.   helm get  :       download a named release
    7.  helm help       : Help about any command
    8.   helm history  :   fetch release history
    9.  helm home   :     displays the location of HELM_HOME
    10.   helm init   :     initialize Helm on both client and server
    11.   helm inspect   :  inspect a chart
    12.   helm install :    install a chart archive
    13.  helm lint :       examines a chart for possible issues
    14.   helm list     :   list releases
    15.  helm package  :   package a chart directory into a chart archive
    16. helm  plugin      :add, list, or remove Helm plugins
    17.   helm repo :       add, list, remove, update, and index chart repositories
    18. helm  reset   :    uninstalls Tiller from a cluster
    19.   helm rollback :   roll back a release to a previous revision
    20.   helm search  :  search for a keyword in charts
    21.  helm serve   :    start a local http web server
    22.  helm status  :    displays the status of the named release
    23.   helm template   : locally render templates
    24. helm  test    :    test a release
    25.  helm upgrade   :  upgrade a release
    26.  helm verify   :   verify that a chart at the given path has been signed and is valid
    27. helm  version   :  print the client/server version information
