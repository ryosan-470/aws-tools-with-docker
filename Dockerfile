FROM docker:18.05.0-ce-git

MAINTAINER Ryousuke Sato <rskjtwp@gmail.com>

ENV DOCKER_COMPOSE_VERSION 1.21.1
ENV DOCKER_MACHINE_VERSION 0.14.0
ENV AWS_ECS_CLI_VERSION 1.5.0

RUN apk add --no-cache openssh tar gzip ca-certificates py-pip curl
RUN curl -L https://github.com/docker/machine/releases/download/v${DOCKER_MACHINE_VERSION}/docker-machine-Linux-x86_64 -o /usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine
RUN curl -L https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-v${AWS_ECS_CLI_VERSION} -o /usr/local/bin/ecs-cli && chmod +x /usr/local/bin/ecs-cli
RUN pip install docker-compose==${DOCKER_COMPOSE_VERSION}
RUN pip install awscli
RUN pip install awsebcli

CMD ["/bin/sh"]
