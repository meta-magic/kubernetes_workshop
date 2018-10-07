#########################################
# Base Ubuntu Installation
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers
#
# Version 0.01
#########################################
#
# Base OS Version
FROM ubuntu:14.04

# Author
MAINTAINER Deepali Arvind <deepali.arvind@metamagic.in>

# Install SuperVisor
RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor


# Install Curl
RUN apt-get install -y curl

# Install wget

RUN apt-get install -y wget
RUN apt-get -y  update
RUN apt-get install -y  zip unzip

# --------------------------------
# Only in Development MODE 
# Remove Vi in Production Mode
# --------------------------------
# RUN apt-get install -y vim

# Desire 3D Directories
RUN mkdir /Home/
RUN mkdir /Home/metaMagic/
RUN mkdir /Home/metaMagic/Softwares
RUN chmod -R 750 /Home/metaMagic/Softwares

# Desire 3D Default System User
RUN useradd -ms /bin/bash metaMagic

RUN mkdir /home/metaMagic/app/
RUN mkdir /home/metaMagic/app/config-files
RUN chmod -R 750 /home/metaMagic/app/config-files

WORKDIR /home/metaMagic/

# when the container launches
CMD ["bash"] 
