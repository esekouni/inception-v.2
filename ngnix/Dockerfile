FROM debian:latest

COPY source.list /etc/apt

RUN apt-get update && apt-get install -y nginx

COPY configfile.conf /etc/nginx/conf.d/configfile.conf

COPY cert.pem /etc/nginx/cert/server.pem

COPY key.pem /etc/nginx/private/server.pem

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
