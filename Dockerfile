FROM php:7.3-apache

RUN apt update && apt install -y mariadb-server mariadb-client && apt install -y supervisor
RUN docker-php-ext-install mysqli

COPY . /var/www/html
RUN chmod -R 0755 /var/www/html

COPY config/supervisord.conf /etc/supervisord.conf

EXPOSE 80

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]