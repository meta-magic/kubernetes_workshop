#########################################
# API GateWay Server Installation
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

# Copy the API Server App into WebApps directory
ADD api-gw /Home/metaMagic/Softwares/tc9/webapps/

RUN sed -i "s/8080/9581/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/5013/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/edge-server/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/Docker/API GW Docker/g" /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp


# Edge Server API Gateway Port
EXPOSE 9581
EXPOSE 8009

# when the container launches
#CMD [ "/Home/metaMagic/Softwares/tc9/bin/catalina.sh", "run" ] 
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
