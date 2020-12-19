FROM ubuntu:18.04

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y && \
apt install apache2 -y && \
apt install php7.2 -y 

RUN service apache restart

WORKDIR /var/www/html/
COPY . .
