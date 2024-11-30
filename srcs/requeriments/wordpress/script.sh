#!/bin/bash

set -x

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$DATABASE_NAME --dbuser=$DATABASE_USER_NAME --dbpass=$DATABASE_PASSWORD --dbhost=$DATABASE_HOST --allow-root
./wp-cli.phar core install --url=$DATABASE_URL --title=$DATABASE_TITLE --admin_user=$DATABASE_ADMIN_USER --admin_password=$DATABASE_ADMIN_PASSWORD --admin_email=$DATABASE_ADMIN_EMAIL --allow-root

php-fpm8.2 -F