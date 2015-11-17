FROM keboola/base
MAINTAINER Ondrej Hlavacek <ondrej.hlavacek@keboola.com>
ENV APP_VERSION 1.2.0

# Image setup
WORKDIR /tmp
RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum -y --enablerepo=epel,remi,remi-php56 upgrade
RUN yum -y --enablerepo=epel,remi,remi-php56 install git
RUN yum -y --enablerepo=epel,remi,remi-php56 install php
RUN yum -y --enablerepo=epel,remi,remi-php56 install php-cli
RUN yum -y --enablerepo=epel,remi,remi-php56 install php-common
RUN yum -y --enablerepo=epel,remi,remi-php56 install php-mbstring
RUN yum -y --enablerepo=epel,remi,remi-php56 install php-pdo
RUN yum -y --enablerepo=epel,remi,remi-php56 install php-xml
RUN echo "date.timezone=UTC" >> /etc/php.ini
RUN echo "memory_limit = -1" >> /etc/php.ini
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

