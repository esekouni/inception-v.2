FROM  debian:latest

RUN apt-get update && apt-get install -y mariadb-server vim 

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

# ENV  MARIADB_ROOT_PASSWORD 1234
# ENV  MARIADB_DATABASE wordpress
# ENV  MARIADB_USER wordpress
# ENV  MARIADB_PASSWORD wordpress

COPY script.sh /home

RUN chmod +x /home/script.sh

ENTRYPOINT ["sh", "/home/script.sh"]

EXPOSE 3306

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]

