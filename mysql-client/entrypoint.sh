#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then
    mysql_install_db > /dev/null 2> /dev/null
fi

mysqld_safe > /dev/null 2> /dev/null &

while ! mysqladmin -s ping; do
  echo -n .
  sleep 1;
done;

exec mysql
