#BASE VERSION
FROM metamagicglobal/tomcat:9

ADD productms-1.0.0-SNAPSHOT.war /Home/metaMagic/Softwares/tc9/webapps

RUN sed -i "s/8080/8082/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/8443/9043/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 
RUN sed -i "s/config/productms-1.0.0-SNAPSHOT/g" /Home/metaMagic/Softwares/tc9/conf/server.xml 

# Code Pipeline Micro Services Port
EXPOSE 8082

# when the container launches
CMD ["supervisord","-c", "/etc/supervisor/conf.d/tomcat.conf"]

