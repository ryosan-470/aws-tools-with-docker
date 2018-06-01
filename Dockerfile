FROM docker:18.05.0-ce-git

MAINTAINER Ryousuke Sato <rskjtwp@gmail.com>

ENV DOCKER_COMPOSE_VERSION 1.21.2
ENV DOCKER_MACHINE_VERSION 0.14.0

RUN apk add --no-cache openssh tar gzip ca-certificates py-pip
RUN pip install awscli
RUN pip install awsebcli
RUN apk add --no-cache curl
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
RUN curl -L https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine-Linux-x86_64 -o /usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine

CMD ["/bin/sh"]
