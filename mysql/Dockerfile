FROM stackbrew/ubuntu

RUN apt-get update -y
RUN apt-get install mysql-server

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
