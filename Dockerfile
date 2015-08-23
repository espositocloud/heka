FROM debian:8
MAINTAINER Antonio Esposito "kobe@befair.it"

COPY heka.deb /tmp/heka.deb
RUN dpkg -i /tmp/heka.deb

COPY conf /etc/heka.d

EXPOSE 4352
ENTRYPOINT ["hekad", "--config", "/etc/heka.d"]
