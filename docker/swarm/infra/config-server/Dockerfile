#########################################
# Config Server Installation
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

# Copy Spring Config Server App to Tomcat WebApps
ADD config /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/6061/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/configserver/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/Config Server Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# Spring Config Server Port
EXPOSE 6061

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]


