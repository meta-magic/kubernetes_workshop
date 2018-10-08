#########################################
# DNA Micro Service Installation
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

# Copy the DNA Service App into WebApps directory
ADD order /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/8583/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/7543/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/order-service/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/DNA Service Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# DNA Micro Services Port
EXPOSE 8583

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
