#########################################
# Java Version 8
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers
#########################################

# Base OS Version
FROM metamagicglobal/ubuntu

MAINTAINER Deepali Arvind <deepali.arvind@metamagic.in>

# ADD JDK 8
ADD jdk /Home/metaMagic/Softwares/

ENV JAVA_VERSION=8
ENV JAVA_HOME=/Home/metaMagic/Softwares/jdk1.8.0_152/
ENV PATH="${PATH}:${JAVA_HOME}bin"

# when the container launches
CMD ["bash"] 
