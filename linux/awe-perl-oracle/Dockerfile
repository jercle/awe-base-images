FROM jercle/awe-perl-base:alpine

LABEL project="awe-dmz-migration"
LABEL type="base"

USER root

ENV LD_LIBRARY_PATH=/opt/oracle/instantclient_21_6:$LD_LIBRARY_PATH
ENV PATH=/opt/oracle/instantclient_21_6:$PATH

RUN mkdir /opt/oracle && \
  cd /opt/oracle && \
  wget https://download.oracle.com/otn_software/linux/instantclient/216000/instantclient-basic-linux.x64-21.6.0.0.0dbru.zip && \
  wget https://download.oracle.com/otn_software/linux/instantclient/216000/instantclient-sdk-linux.x64-21.6.0.0.0dbru.zip && \
  wget https://download.oracle.com/otn_software/linux/instantclient/216000/instantclient-sqlplus-linux.x64-21.6.0.0.0dbru.zip && \
  unzip -o instantclient-basic-linux.x64-21.6.0.0.0dbru.zip && \
  unzip -o instantclient-sdk-linux.x64-21.6.0.0.0dbru.zip && \
  unzip -o instantclient-sqlplus-linux.x64-21.6.0.0.0dbru.zip && \
  rm instantclient-basic-linux.x64-21.6.0.0.0dbru.zip \
  instantclient-sdk-linux.x64-21.6.0.0.0dbru.zip \
  instantclient-sqlplus-linux.x64-21.6.0.0.0dbru.zip && \
  mkdir /etc/ld.so.conf.d && \
  ldconfig /etc/ld.so.conf.d/ && \
  echo /opt/oracle/instantclient_21_6 > /etc/ld.so.conf.d/oracle-instantclient.conf && \
  ln -s /opt/oracle/instantclient_21_6/libclntsh.so.21.1 /usr/lib/libclntsh.so && \
  ln -s /opt/oracle/instantclient_21_6/libocci.so.21.1 /usr/lib/libocci.so && \
  ln -s /opt/oracle/instantclient_21_6/libociicus.so /usr/lib/libociicus.so && \
  ln -s /opt/oracle/instantclient_21_6/libnnz21.so /usr/lib/libnnz21.so && \
  ln -s /usr/lib/libnsl.so.2 /usr/lib/libnsl.so.1 && \
  ln -s /lib/libc.so.6 /usr/lib/libresolv.so.2 && \
  ln -s /lib64/ld-linux-x86-64.so.2 /usr/lib/ld-linux-x86-64.so.2 && \
  (echo y;echo makepl_arg -V 21.6.0.0.0;echo o conf prerequisites_policy follow;echo o conf commit) |cpan -f -i DBD::Oracle
# CPAN config args found at https://metacpan.org/pod/CPAN

USER www-data
