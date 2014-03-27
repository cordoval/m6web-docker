FROM stackbrew/ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y daemontools curl nginx \
	php5-fpm php5-cli php5-mysqlnd php5-intl \
	mysql-server

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN echo "daemonize=no" > /etc/php5/fpm/pool.d/daemonize.conf
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

ADD services /srv/services

RUN find /srv/services -name run -exec chmod +x {} \;

ADD nginx.conf /etc/nginx/sites-enabled/default
ADD php.ini /etc/php5/fpm/php.ini
ADD php.ini /etc/php5/cli/php.ini
ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
