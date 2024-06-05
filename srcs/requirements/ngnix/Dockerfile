FROM debian:bookworm

RUN apt-get update && apt-get install -y nginx

COPY conf/configfile.conf /etc/nginx/conf.d/configfile.conf

COPY tools/cert.pem /etc/nginx/cert/server.pem

COPY tools/key.pem /etc/nginx/private/server.pem

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
