#BASE VERSION
FROM metamagicglobal/tomcat:9

RUN apt-get -y update
RUN apt-get install -y zip 

COPY maven/${fileName}.war /Home/metaMagic/Softwares

RUN mkdir /Home/metaMagic/Softwares/tc9/webapps/${fileName}
RUN unzip -qq /Home/metaMagic/Softwares/${fileName}.war -d /Home/metaMagic/Softwares/tc9/webapps/${fileName}
RUN sed -i "s/8080/8082/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/9043/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/productms-1.0.0/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 

# Code Pipeline Micro Services Port
EXPOSE 8082

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]

