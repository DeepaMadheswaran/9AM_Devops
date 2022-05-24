#!/bin/bash
sudo systemctl restart docker
docker container rm -f wordpressdb wordpress1
docker run -e MYSQL_ROOT_PASSWORD=123 -e MYSQL_DATABASE=wordpress --name wordpressdb -v "$PWD/database":/var/lib/mysql -d mariadb
docker run -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=123 --name wordpress1 --link wordpressdb:mysql -p 9000:80 -v "$PWD/html":/var/www/html -d wordpress
