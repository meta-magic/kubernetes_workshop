#########################################
# shopping-cart Micro Service Installation
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

# Copy the shopping-cart Service App into WebApps directory
ADD shopping-cart /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/8582/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/7143/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/shopping-cart-service/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/shopping-cart Service Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# shopping-cart Micro Services Port
EXPOSE 8582

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
