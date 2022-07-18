#!/bin/bash
touch Dockerfile
cat /dev/null > Dockerfile
echo "FROM php:5.5-apache" >> Dockerfile
echo "RUN docker-php-ext-install pdo_mysql" >> Dockerfile
echo "RUN a2enmod rewriteADD . /var/www" >> Dockerfile
echo "ADD ./public /var/www/html" >> Dockerfile
# To build an image
docker build -t laravel-app .
docker run c1 -p 9000:80 laravel-app 
docker run -p 9000:80 -e DB_HOST=dbhost.com laravel-app
