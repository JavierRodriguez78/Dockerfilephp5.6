FROM ubuntu
MAINTAINER xavi@geekshubs.com
RUN apt-get update && apt-get install -y \apache2 \
git

#INSTALANDO PHP 5.6
RUN apt-get install -y software-properties-common

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:ondrej/php -y
RUN apt-get update
RUN apt-get install -y --force-yes php5.6

EXPOSE 80
CMD apachectl -D FOREGROUND

WORKDIR /var/www/html