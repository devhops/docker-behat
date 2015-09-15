FROM debian:7

MAINTAINER Sarah Evans <@devhops>
LABEL "Behat Docker image on Debian Wheezy"

# Install php5, git

RUN apt-get -y update
RUN apt-get -y install curl php5-cli git 

# install  php composer

RUN mkdir /data/behat
ADD composer.json /data/behat/
RUN cd /data/behat/ && curl -sS https://getcomposer.org/installer | php
RUN cd /data/behat/ && php composer.phar install
