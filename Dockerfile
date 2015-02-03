#VERSION 1.0.0
FROM keboola/base
MAINTAINER Ondrej Hlavacek <ondrej.hlavacek@keboola.com>

# Image setup
WORKDIR /tmp
RUN yum -y --enablerepo=epel,remi,remi-php55 install git php php-cli php-common php-mbstring
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

