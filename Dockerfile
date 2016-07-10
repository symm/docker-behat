FROM php:7.0-fpm

COPY app/ /var/www/html/
#RUN sh ./setup-composer.sh
#RUN ./composer.phar install
