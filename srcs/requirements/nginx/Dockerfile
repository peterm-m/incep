FROM debian:bullseye

RUN apt update && \
	apt install -y nginx openssl

COPY ./conf/default /etc/nginx/sites-available/
COPY ./tools/conf_nginx.sh /

CMD ["sh", "/conf_nginx.sh", "&"]
