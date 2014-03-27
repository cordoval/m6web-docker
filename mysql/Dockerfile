FROM stackbrew/ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y mysql-server mysql-client

VOLUME ["/var/lib/mysql"]

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
