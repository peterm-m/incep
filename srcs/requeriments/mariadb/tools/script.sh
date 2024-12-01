#!/bin/bash

echo "$INIT_SQL_FILE" > /etc/mysql/init.sql

mysql_install_db
mysqld