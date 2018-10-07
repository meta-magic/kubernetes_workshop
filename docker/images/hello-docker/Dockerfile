#########################################
#
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers
#
# Version 0.1
#########################################
# Base Version
FROM metamagicglobal/ubuntu

MAINTAINER Deepali Arvind <deepali.arvind@metamagic.in>

RUN apt-get update && apt-get install -y apache2 && apt-get clean


RUN chmod -R 777 /var/www/html/
ADD hello /var/www/html/

EXPOSE 80

# when the container launches
CMD apachectl -D FOREGROUND









