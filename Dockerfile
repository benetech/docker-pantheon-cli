FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get --yes install php5-cli php5-curl curl

RUN curl https://github.com/pantheon-systems/cli/releases/download/0.5.5/terminus.phar -L -o /usr/local/bin/terminus && \
    chmod +x /usr/local/bin/terminus 
