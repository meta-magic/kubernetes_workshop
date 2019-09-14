For testing purpose we can create a new namespace for networkpolicy...

kubectl create ns policy-demo -------------------------------------> create a namespace

block-np.yml:
     It will block the service communication  from the pod.
     for that: 
     1) create a pod inside a policy-demo namespace.
     
      kubectl create -f https://raw.githubusercontent.com/meta-magic/kubernetes_workshop/master/yaml/network-policy/pod-np.yml
     
     2) Create the Service.
     kubectl expose --namespace=policy-demo pod nginx --port=80

     3)Ensure the pod service is accessible.
      kubectl run --namespace=policy-demo access --rm -ti --image busybox /bin/sh --------------> create another and login into pod to ns
         
       command to check:
          wget -q nginx -O -               #---------------> wget the nginx inside the busybox to check here service acccesibilty.
                                           #------------------> You should see a response from nginx
          
      4) apply the policy block-np.yml.
    
                 kubectl apply -f block-np.yml
                 
                 
      5) verify:
      
        kubectl run --namespace=policy-demo access --rm -ti --image busybox /bin/sh
        
               command to check:
          wget -q nginx -O -               #---------------> wget the nginx inside the busybox to check here service acccesibilty.

                                           # wget: download timed out
                                           
     

        

      
  
      
