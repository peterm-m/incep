#/bin/bash

sed -i \
	-e "s/\$DOMAIN/$(echo $DOMAIN)/g" \
	-e "s/\$CERTS/$(echo $CERTS)/g" /etc/nginx/sites-available/default

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out $CERTS -subj "/C=MO/L=KH/O=1337/OU=student/CN=pedromar.42.es"

nginx -g "daemon off;"
	