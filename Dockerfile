FROM evarga/jenkins-slave

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get --yes update
RUN apt-get --yes install php5-cli php5-curl curl sshpass

RUN curl https://github.com/pantheon-systems/cli/releases/download/0.11.1/terminus.phar -L -o /usr/local/bin/terminus && \
    chmod +x /usr/local/bin/terminus 
