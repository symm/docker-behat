FROM php:7.0-fpm-alpine

COPY app/ /var/www/html/

RUN curl https://getcomposer.org/download/1.1.3/composer.phar --output /usr/local/bin/composer && chmod +x /usr/local/bin/composer

RUN composer install --prefer-dist
