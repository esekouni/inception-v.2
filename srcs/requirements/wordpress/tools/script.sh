#!/bin/bash

WORDPRESS_DIR="/var/www/html/wordpress"


# Check if WordPress is already installed
if [ ! -f "$WORDPRESS_DIR/wp-config.php" ]; then
    echo "WordPress is not installed. Setting up WordPress now..."
	wp core download --allow-root
	
    wp config create --dbname=$MARIADB_DATABASE --dbuser=$MARIADB_USER --dbpass=$MARIADB_ROOT_PASSWORD --dbhost="mariadb:3306" --extra-php --allow-root
    # Install WordPress
    wp core install --url="esekouni.42.fr" --title="mehdi_sekouni" --admin_user=$WORDPRESS_ADMIN --admin_password=$ADMIN_PASSWORD --admin_email="$WORDPRESS_ADMIN@example.com" --allow-root
	wp user create $USER_WORDPRESS $USER_EMAIL --role=editor --user_pass=$USER_PASS  --allow-root
else
    echo "WordPress is already installed."
fi

$@