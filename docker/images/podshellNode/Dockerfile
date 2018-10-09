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
FROM mhart/alpine-node

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN apk update && apk add wget && apk add curl && apk add nano
RUN npm install -g newman

ENTRYPOINT /bin/sh
