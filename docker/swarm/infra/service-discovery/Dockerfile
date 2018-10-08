#########################################
# Service Disocery Server Installation
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers
#
# Version 0.1
#########################################
# Base Version
FROM metamagicglobal/tomcat:9

MAINTAINER Deepali Arvind <deepali.arvind@metamagic.in>

# Copy the Service Discovery App into WebApps directory
ADD sd /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/7070/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/5023/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/eureka-server/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/Service Discovery/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# Service Discovery Port
EXPOSE 7070

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
