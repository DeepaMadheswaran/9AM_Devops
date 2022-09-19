#!/bin/bash
docker pull wordpress
docker pull mysql
docker run --name mysql01 -e MYSQL_ROOT_PASSWORD=Password1234 -d mysql
docker run --name wordpress01 --link mysql01 -p 9000:80 -e WORDPRESS_DB_HOST=mysql01:3306 -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=Password1234 -e WORDPRESS_DB_NAME=wordpress -e WORDPRESS_TABLE_PREFIX=wp_ -d wordpress
