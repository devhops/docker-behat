FROM debian:7

MAINTAINER Sarah Evans <@devhops>
LABEL "Behat Docker image on Debian Wheezy"

# Install php5, git

RUN apt-get -y update
RUN apt-get -y install curl php5-cli git apt-utils

RUN mkdir /home/behat

COPY composer.json /data/behat/composer.json

WORKDIR /home/behat
RUN curl -sS https://getcomposer.org/installer | php
RUN php composer.phar install
