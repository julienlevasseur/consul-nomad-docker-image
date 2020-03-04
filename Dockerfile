FROM ubuntu:19.04

ENV ARCH amd64
ENV NOMAD_VERSION 0.10.4
ENV CONSUL_VERSION 1.7.1

RUN apt update && \
apt-get install -y wget unzip && \
wget https://releases.hashicorp.com/nomad/$NOMAD_VERSION/nomad_${NOMAD_VERSION}_linux_$ARCH.zip && \
unzip nomad_${NOMAD_VERSION}_linux_$ARCH.zip -d /usr/local/bin/ && \
wget https://releases.hashicorp.com/consul/$CONSUL_VERSION/consul_${CONSUL_VERSION}_linux_amd64.zip && \
unzip consul_${CONSUL_VERSION}_linux_$ARCH.zip -d /usr/local/bin/ && \
apt-get clean