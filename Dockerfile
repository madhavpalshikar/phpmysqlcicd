FROM ubuntu:18.04

RUN sudo apt update -y && \
sudo apt install apache2 -y && \
sudo apt install php7.2 -y 

RUN service apache restart

WORKDIR /var/www/html/
COPY . .
