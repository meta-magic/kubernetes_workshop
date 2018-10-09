#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers - Tomcat
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/podshelljava:8

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN mkdir /Home/Softwares/tomcat/

# Copy Tomcat (Install)
COPY --chown=podadmin:podadmin tc9 /Home/Softwares/tomcat/
RUN chmod 750 /Home/Softwares/tomcat/bin/*

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
ENTRYPOINT ["/Home/Softwares/tomcat/bin/catalina.sh", "run"]
