#########################################
# shopping LoBa Service Dockerfile
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

# Copy the shopping LoBa Service App into WebApps directory
ADD loba /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/9082/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/7123/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/shopping-client/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/shopping LoBa Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp


# shopping LoBa Service Port
EXPOSE 9082

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
