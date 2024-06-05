FROM	debian:bookworm

RUN		apt-get update && apt-get install -y php8.2 php8.2-fpm curl php8.2-mysql php8.2-cli

RUN		curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN		chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN     sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf

COPY	tools/script.sh /

RUN		chmod +x /script.sh
# RUN		mkdir -p /var/www/html/wordpress

WORKDIR	/var/www/html/wordpress


ENTRYPOINT ["sh", "/script.sh"]

EXPOSE	9000

CMD ["php-fpm8.2" , "-F"]