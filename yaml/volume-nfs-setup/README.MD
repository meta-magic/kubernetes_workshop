# 1. Installing NFS Server 

## 1.1. Create Persistent Disk in Google Compute Engine

Before we install the NFS server create a persistent disk in Google Cloud using the following Google Cloud command.

```bash
$ gcloud compute disks create --size=10GB --zone=us-east1-b gce-nfs-disk
```

## 1.2. Deploy NFS Server in Google Cloud

Download the NFS docker container - gcr.io/google_containers/volume-nfs:0.8. Refer this container in the Deployment yaml.

## 1.3. Create NFS Service

Add the following ports in the Service
<pre>
  ports:
    - name: nfs
      port: 2049
    - name: mountd
      port: 20048
    - name: rpcbind
      port: 111
</pre>

## 1.4. Create Persitent Volume


NFS Server Installation Done.

# 2. Install the App to use NFS Volumes

## 2.1. Create Persistent Volume Claim

## 2.2 Create the App (Deployment)



