FROM php:8.2-fpm-bullseye

RUN usermod -u 1000 www-data && groupmod -g 1000 www-data

RUN mkdir -p /var/www/html/public
RUN docker-php-ext-install mysqli pdo pdo_mysql

VOLUME /var/www/html