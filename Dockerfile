FROM wordpress:latest
MAINTAINER dev
COPY . /var/www/html
RUN cp /var/www/html/wp-config-sample.php /var/www/wordpress/wp-config.php
EXPOSE 5000

