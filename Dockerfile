FROM php:8.1-cli-alpine

WORKDIR /app

ARG environment

COPY ["composer.json", "composer.lock", "./"]
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer install
RUN if [[ "$environment" = "dev" ]]; then composer install; else composer install --no-dev; fi

COPY . ./

EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
