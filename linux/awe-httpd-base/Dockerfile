FROM httpd:2.4.54-alpine

LABEL project="awe-dmz-migration"
LABEL type="base"

RUN apk upgrade --no-cache && \
  rm -rf /usr/local/apache2/cgi-bin/ && \
  mkdir /usr/local/apache2/cgi-bin/ && \
  mkdir /app && \
  chown -R www-data:www-data \
  /usr/local/apache2/logs \
  /usr/local/apache2/cgi-bin/ \
  /app && \
  chmod -R 500 /usr/local/apache2/cgi-bin/ && \
  chmod -R 700 /app \
  /usr/local/apache2/logs && \
  rm /usr/local/apache2/htdocs/index.html

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

USER www-data

EXPOSE 8080
