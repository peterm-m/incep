FROM debian:bullseye

RUN apt -y update && apt install -y \
	php-fpm \
	php-mysql \
	curl

COPY ./tools/conf_wordpress.sh /
COPY ./conf/wp-config.php /


CMD ["sh", "/conf_wordpress.sh"]
