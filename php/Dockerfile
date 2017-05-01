FROM ubuntu
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y \
    && apt-get update
RUN apt-get install -y --force-yes php7.0-cli php7.0-dev \
    php-pgsql php-sqlite3 php-gd php-apcu php7.0-curl php7.0-mcrypt \
    php-imap php7.0-gd php-memcached php7.0-pgsql php7.0-readline \
    php-xdebug php-mbstring php7.0-xml php7.0-zip php7.0-intl php7.0-bcmath

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/cli/php.ini && \
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/cli/php.ini && \
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.0/cli/php.ini && \
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.0/cli/php.ini

