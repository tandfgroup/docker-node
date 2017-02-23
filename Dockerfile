FROM ubuntu:16.04
MAINTAINER Taylor & Francis

# Install latest version of NodeJS 6
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends wget \
    && wget -qO- http://deb.nodesource.com/setup_6.x | bash - \
    && apt-get install -y --no-install-recommends nodejs \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
