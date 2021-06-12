FROM wordpress:latest
MAINTAINER dev
COPY . /var/www/html
RUN /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
EXPOSE 5000

