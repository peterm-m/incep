FROM debian:bullseye

RUN apt update
RUN apt install mariadb-server -y

COPY ./tools/conf.sh .

CMD ["sh", "./conf.sh"]
