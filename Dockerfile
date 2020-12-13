FROM ubuntu

RUN apt update -y && \
apt install apache2 -y && \
apt install php7.2 -y 

RUN service apache restart

WORKDIR /var/www/html/
COPY . .