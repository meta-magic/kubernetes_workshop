 Amazon Web Services (AWS) comes with a dynamic storage provisioner for Elastic Block Storage (EBS). This enables you to store data beyond the lifetime of a Pod.
 
 1) [create EBS VOLUME](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html):
     copy the volumeid for future use
 2) create the namespace : 
   kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-omega-ns.yaml
 3) create the storage class:
   kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-storage.yaml
 4) create volume:
    
   note: replace the value " volumeID:"  with ur volume id which u have previously created in the v-aws-volume.yaml
 
 kubectl create -f v-aws-volume.yaml
 
 5) create pvc:
 kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-aws-pvc.yaml
 
 6) create deployment:
 kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/volume-aws/v-omega-dep.yaml
 

