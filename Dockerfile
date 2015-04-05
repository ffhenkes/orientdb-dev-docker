
## Simple docker for development/test purposes

FROM webverse/openjdk-7:latest
MAINTAINER Fabio Favero Henkes "fabio.favero@gmail.com"

ENV ORIENTDB_ROOT_PASSWORD demo

## Only use enterprise for development and test purposes
ADD orientdb-enterprise-2.0.6.tar.gz /usr/local/
RUN cd /usr/local/ && \
    mv -f orientdb-* orientdb && \
    ln -s ${PWD}/orientdb/bin/* /usr/bin/

VOLUME ["/usr/local/orientdb/log", "/usr/local/orientdb/databases"]

EXPOSE 2424
EXPOSE 2480

CMD ["/usr/bin/server.sh"]
