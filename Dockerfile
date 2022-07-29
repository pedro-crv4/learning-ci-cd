FROM php:8.1-cli-alpine

WORKDIR /app

COPY ["composer.json", "composer.lock", "./"]
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer install

COPY . ./

EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
