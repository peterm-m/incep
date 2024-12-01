#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $SSL_KEYOUT -out $SSL_OUT -subj=$SSL_SUBJ

nginx -g "daemon off;"