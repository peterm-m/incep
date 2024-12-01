FROM debian:latest

RUN apt -y update && apt -y upgrade && apt install -y \
 nginx \
 openssl

COPY conf/default /etc/nginx/sites-available/.
COPY tools/script.sh .

RUN chmod +x script.sh
CMD ["./script.sh"]