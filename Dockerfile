FROM ej52/alpine-nginx-php
RUN \
  rm -rf /var/www/index.php \
  rm -rf /etc/nginx/conf.d/default.conf 
WORKDIR /var/www/
COPY / /var/www/
RUN mv default.conf /etc/nginx/conf.d
RUN cp .env.example .env
RUN composer install -vvv
RUN set -x \
  && php artisan key:generate \
  && touch database/database.sqlite \
  && php artisan migrate \
  && php artisan db:seed \
  && chmod -R 755 storage \
  && chown -R www-data:www-data /var/www
  
EXPOSE 80
  