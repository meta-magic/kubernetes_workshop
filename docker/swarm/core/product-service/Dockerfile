#########################################
# product Micro Service Installation
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

# Copy the product Service App into WebApps directory
ADD product /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/8581/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/7343/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/product-service/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/product Service Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# product Micro Services Port
EXPOSE 8581

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
