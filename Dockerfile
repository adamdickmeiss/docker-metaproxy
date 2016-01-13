FROM debian:jessie
RUN apt-get update && apt-get install -y curl 
RUN curl http://ftp.indexdata.dk/debian/indexdata.asc|apt-key add -
RUN echo "deb http://ftp.indexdata.dk/debian jessie main" >/etc/apt/sources.list.d/indexdata.list
RUN apt-get update
RUN apt-get install -y metaproxy
EXPOSE 9000
ENTRYPOINT ["metaproxy", "-p/var/run/metaproxy.pid", "-l/var/log/metaproxy.log", "-c/etc/metaproxy/metaproxy.xml"]
