FROM node:10-alpine

ENV NODE_VERSION 10.7.0

RUN apk update \
  && apk add --no-cache --update \
    bash \
    build-base \
    clang \
    git \
    jq \
    ncurses-dev \
    patch \
    perl \
    ruby \
    ruby-irb \
    tar \
    zlib \
    zlib-dev \
  && npm i -g \
    @angular/cli \
    gulp \
    karma-cli \
    pm2 \
    protractor \
    semantic-release \
    typescript \
    webpack \
    webpack-dev-server \
  && npm cache clean -g -f \
  && git clone --depth=1 https://github.com/docker/docker-bench-security.git /docker-bench-security && rm -rf !$/.git \
  && chmod -R 755 /docker-bench-security
