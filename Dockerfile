FROM php:7.4-apache
LABEL maintainer="r.wienicke@connexion.at"


RUN DEBIAN_FRONTEND=noninteractive \ 
	&& apt update -q && apt install -y zip libpng-dev libzip-dev libicu-dev libjpeg-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libxpm-dev wget \
	&& docker-php-ext-configure gd --with-jpeg --with-freetype \
	&& docker-php-ext-install gd \
	&& docker-php-ext-install intl \
	&& docker-php-ext-install mysqli \
	&& docker-php-ext-enable mysqli

RUN pecl install xdebug-3.0.3
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini
	

# if needed use pdo driver replace this 2 lines 
# && docker-php-ext-install mysqli \
# && docker-php-ext-enable mysqli
# with:
# && docker-php-ext-install pdo_mysql \
# && docker-php-ext-enable pdo_mysql
