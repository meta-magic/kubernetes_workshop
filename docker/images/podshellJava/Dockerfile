#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2018
#
# Desire3D Micro Services Containers
#
# Version 0.1
#################################################################
# Base Version
FROM anapsix/alpine-java

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

# Install wget, curl and nano
RUN apk update && apk add wget && apk add curl && apk add nano && apk add vim

# Create Software Directories
RUN mkdir -p /Home/Softwares 
RUN chmod -R 750 /Home/Softwares

# Add user
RUN adduser -D -u 2048 -s /bin/bash podadmin

ADD .bashrc /home/podadmin/
RUN chown podadmin:podadmin /home/podadmin/.bashrc
RUN chown podadmin:podadmin /Home/Softwares

WORKDIR /home/podadmin

# Run the Container as podadmin
USER podadmin

ENTRYPOINT /bin/bash
