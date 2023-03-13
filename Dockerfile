#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Denis Astahov
#---------------------------------------------------------------------------

FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Hello OLexandr ))<br>'   > /var/www/html/index.html
RUN echo 'Hello OLexandr></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
