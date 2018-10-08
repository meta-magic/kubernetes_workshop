#########################################
# product LoBa Service Dockerfile
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

# Copy the product LoBa Service App into WebApps directory
ADD loba /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/9081/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/7323/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/product-client/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/product LoBa Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp


# product LoBa Service Port
EXPOSE 9081

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
