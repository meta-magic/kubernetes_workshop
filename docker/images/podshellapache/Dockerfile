#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2018
#
# Desire3D Micro Services Containers - Apache 2
#
# Version 0.1
#################################################################
FROM alpine:3.6

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN apk add --no-cache apache2 && \
           mkdir -p /run/apache2 

# Copy Starting page for Apache 2
COPY index.html /var/www/localhost/htdocs/index.html

# Apache 2 on Port 80
EXPOSE 80

# Run Apache2
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
