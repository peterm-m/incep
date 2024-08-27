FROM debian:bullseye

RUN apt update
RUN apt install -y nginx openssl

COPY ./tools/conf.sh .

EXPOSE 5000 

CMD ["sh", "./conf.sh"]
