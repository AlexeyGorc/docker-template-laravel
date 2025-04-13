FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    git curl zip unzip libzip-dev libpq-dev libpng-dev libonig-dev libxml2-dev libjpeg-dev libfreetype6-dev libssl-dev \
    && docker-php-ext-install pdo_mysql zip exif pcntl gd \
    && pecl install xdebug

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
