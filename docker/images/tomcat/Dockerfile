#########################################
# Tomcat Version 9.0.2
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers
#
# Version 0.1
#########################################
# Base Version
FROM metamagicglobal/jre:8

MAINTAINER Deepali Arvind <deepali.arvind@metamagic.in>

# Install Tomcat 

ADD tomcat /Home/metaMagic/Softwares/
RUN unzip /Home/metaMagic/Softwares/tc9.zip -d /Home/metaMagic/Softwares/


ENV TOMCAT_HOME=/Home/metaMagic/Softwares/tc9/
ENV PATH="${PATH}:${TOMCAT_HOME}bin"

# Clean up
RUN apt-get autoremove -y wget
RUN apt-get autoremove -y zip unzip
RUN apt-get clean

ADD tomcat-wrapper.sh /Home/metaMagic/Softwares/tc9/bin/
ADD server.xml /Home/metaMagic/Softwares/tc9/conf/
ADD tomcat-users.xml /Home/metaMagic/Softwares/tc9/conf/
ADD webapps-Root-index.jsp /Home/metaMagic/Softwares/tc9/webapps/ROOT/index.jsp

# when the container launches
ADD supervisord.conf /etc/supervisor/conf.d/tomcat.conf

RUN rm -rf /Home/metaMagic/Softwares/tc9.zip

EXPOSE 8080

CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]
