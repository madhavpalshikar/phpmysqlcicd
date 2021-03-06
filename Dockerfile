FROM ubuntu:18.04

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y && \
apt install apache2 -y && \
apt install php7.2 -y && \
echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf && \
apachectl configtest && \
rm /var/www/html/index.html

RUN  service apache2 start

WORKDIR /var/www/html/

COPY . .

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
