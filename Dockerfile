FROM ubuntu:18.04
MAINTAINER cedricboumbou   (cedrovic@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTED=noninteractive apt-get install -y nginx git 
EXPOSE 80 
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /varr/www/html/
ENTRYPOINT ["/usr/sbin/ngix", "-g", "daemon off;"
