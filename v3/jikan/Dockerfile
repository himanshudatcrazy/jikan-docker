FROM php:7.4-apache-buster

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN sed -i 's|http://deb.debian.org|http://archive.debian.org|g' /etc/apt/sources.list \
 && sed -i '/security.debian.org/d' /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y \
    openssl \
    git \
    unzip \
    zip \
 && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
 && composer --version

WORKDIR /var/www/html

RUN git clone --branch=v3 --depth=1 https://github.com/jikan-me/jikan-rest.git . \
 && composer require 'composer/package-versions-deprecated' \
 && composer install --prefer-dist --no-progress --classmap-authoritative --no-interaction \
 && composer update jikan-me/jikan

EXPOSE 8000
