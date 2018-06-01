FROM ubuntu:xenial

MAINTAINER Ryousuke Sato <rskjtwp@gmail.com>

ENV DOCKER_VERSION 18.03.1-ce
ENV DOCKER_COMPOSE_VERSION 1.21.1
ENV DOCKER_MACHINE_VERSION 0.14.0
ENV AWS_ECS_CLI_VERSION 1.5.0

RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-client \
    ca-certificates \
    python-pip \
    python-setuptools \
    libyaml-dev \
    curl \
    &&  rm -rf /var/lib/apt/lists/*
RUN curl -L https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz -o docker.tgz; \
    tar xvzof docker.tgz \
    --strip-components 1 \
    --directory /usr/local/bin/ \
    && rm -rf docker.tgz
RUN curl -L https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine-Linux-x86_64 \
    -o /usr/local/bin/docker-machine; \
    chmod +x /usr/local/bin/docker-machine
RUN curl -L https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64 \
    -o /usr/local/bin/docker-compose; \
    chmod +x /usr/local/bin/docker-compose

# AWS
RUN curl -L https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-v${AWS_ECS_CLI_VERSION} -o /usr/local/bin/ecs-cli && chmod +x /usr/local/bin/ecs-cli
RUN pip install awscli
RUN pip install awsebcli

CMD ["/bin/sh"]
