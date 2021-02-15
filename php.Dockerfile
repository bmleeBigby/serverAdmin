FROM php:7.4.15-apache

COPY src/ /var/www/html/

RUN chown -R www-data.www-data /var/www/html
RUN chmod -R 754 /var/www/html

RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

EXPOSE 7000