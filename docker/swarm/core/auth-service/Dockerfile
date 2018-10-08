#########################################
# Auth Micro Service Installation
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

# Copy the Auth Service App into WebApps directory
ADD auth /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/8585/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/7043/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/auth-service/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/Auth Service Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# Auth Micro Services Port
EXPOSE 8585

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
