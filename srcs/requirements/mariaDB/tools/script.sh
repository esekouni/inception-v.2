#!/bin/bash

echo "FLUSH PRIVILEGES;" > data.sql
echo "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" >> data.sql
echo "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';" >> data.sql
echo "GRANT ALL PRIVILEGES ON *.* TO '$MARIADB_USER'@'%';" >> data.sql
echo "FLUSH PRIVILEGES;" >> data.sql

mariadbd -u mysql --bootstrap < data.sql

$@

