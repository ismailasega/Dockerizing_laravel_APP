FROM php:7.3-fpm-alpine

WORKDIR /var/www

RUN apk update \
    build esentials

#PHP-Extensions
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-enable pdo_mysql

#getting latest composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./ /var/www

EXPOSE 9000

CMD [ "php-fpm" ]