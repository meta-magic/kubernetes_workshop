# Kubernetes Volume in Deployment and StatefulSets

This section focuses on testing Kubernetes Deployment and StatefulSets using various Distributed File System and Block Devices. Each Test case elaborates the following concepts

- Storage Class
- Persistent Volume
- Persistent Volume Claim
- Deployment 
- StatefulSet

The Test cases demonstrate various Access Modes for different File Systems and Block Devices and whats the behavior when you use Deployment and StatefulSets.

- Read Write Once
- Read Only Many
- Read Write Many

Deployment is ideally meant for Stateless Applications and you should use StatefulSet for Stateful Apps.

