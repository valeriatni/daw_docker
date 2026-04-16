FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2

RUN mkdir -p /var/www/developers
RUN mkdir -p /var/www/webapp

COPY site/developers/ /var/www/developers/
COPY site/webapp/ /var/www/webapp/

COPY apache/developers.conf /etc/apache2/sites-available/developers.conf
COPY apache/webapp.conf /etc/apache2/sites-available/webapp.conf

RUN a2ensite developers.conf && \
    a2ensite webapp.conf && \
    a2dissite 000-default.conf

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]