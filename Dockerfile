FROM php:7.3.28-apache

LABEL maintainer="Injamul Mohammad Mollah <mrinjamul@gmail.com>"

RUN apt-get update -y && apt-get install -y \
  libwebp-dev \
  libjpeg62-turbo-dev \
  libxpm-dev \
  libfreetype6-dev \
  libpng-dev \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo pdo_mysql

RUN docker-php-ext-install mbstring fileinfo gettext exif

RUN docker-php-ext-configure gd --with-gd --with-webp-dir --with-jpeg-dir \
    --with-png-dir --with-zlib-dir --with-xpm-dir --with-freetype-dir

RUN docker-php-ext-install gd

RUN a2enmod rewrite
