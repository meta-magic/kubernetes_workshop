Kubernetes supports EBS Persistent Volumes by default. It also supports EFS Persistent Volumes by the external efs-provisioner.

<b>Prerequisites:</b>

1) [An EFS file system in your cluster's region](https://docs.aws.amazon.com/efs/latest/ug/getting-started.html)
2)  [Mount targets](http://docs.aws.amazon.com/efs/latest/ug/accessing-fs.html) and [security groups](http://docs.aws.amazon.com/efs/latest/ug/accessing-fs-create-security-groups.html) such that any node (in any zone in the cluster's region) can mount the EFS file system by its [File system DNS name](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html)
 
 
 ----------------------------------------------------------------------------------------------------------------------------
1)  Download the manifest file : yaml/volume-nfs/v-efs-provisioner-manifest.yml
  
  - In the configmap section change the `file.system.id:` and `aws.region:` to match the details of the EFS you created.

- In the deployment section change the `server:` to the DNS endpoint of the EFS you created.

kubectl apply -f v-efs-provisioner-manifest.yml 

2) create the namespace 
kubectl create -f efs-ns.yml
3) create the pvc 
kubectl create -f v-efs-pvc.yml
4) create the volume
kubectl create -f v-efs-volume.yml
5)create the deployment
kubectl create -f v-aws-dep-efs.yml
