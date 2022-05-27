FROM jercle/awe-httpd-base:alpine

LABEL project="awe-dmz-migration"
LABEL type="base"

USER root

RUN apk --no-cache upgrade && \
  apk --no-cache add \
  perl-cgi \
  perl-file-slurp \
  perl-xml-libxml \
  perl-path-class \
  perl-utils \
  perl-dbi \
  perl-template-toolkit \
  perl-cgi \
  perl-dev \
  perl-xml-generator \
  libaio \
  libnsl \
  make \
  build-base \
  libc6-compat

USER www-data

EXPOSE 8080
