FROM httpd:2.4

COPY ./httpd-vhosts.conf /usr/local/apache2/conf/extra/

WORKDIR /usr/local/apache2/conf

RUN sed -i 's/#Include conf\/extra\/httpd-vhosts.conf/Include conf\/extra\/httpd-vhosts.conf/g' httpd.conf

WORKDIR /usr/local/apache2/htdocs

RUN mkdir -p web1 && mkdir -p web2

COPY ./web1/index.html /usr/local/apache2/htdocs/web1

COPY ./web2/index.html /usr/local/apache2/htdocs/web2
