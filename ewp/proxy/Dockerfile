FROM php:7.4-apache
RUN a2enmod proxy && a2enmod proxy_connect && a2enmod proxy_http && sed -i 's/#ProxyRequests/ProxyRequests/' /etc/apache2/mods-available/proxy.conf
