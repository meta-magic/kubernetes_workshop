#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/alpine

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN apk update && apk add wget && apk add curl && apk add nano

# Install Network Utilities
RUN apk add nuttcp 
#RUN apk add nutperf && apk add nuttcp 

ENTRYPOINT /bin/sh
