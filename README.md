# AWS tools with Alpine Linux
[![CircleCI](https://img.shields.io/circleci/project/github/ryosan-470/aws-tools-with-docker.svg?style=flat-square)](https://circleci.com/gh/ryosan-470/aws-tools-with-docker)
[![Docker Build Status](https://img.shields.io/docker/build/jtwp470/aws-tools-with-docker.svg?style=flat-square)](https://hub.docker.com/r/jtwp470/aws-tools-with-docker/)
[![Docker Automated build](https://img.shields.io/docker/automated/jtwp470/aws-tools-with-docker.svg?style=flat-square)](https://hub.docker.com/r/jtwp470/aws-tools-with-docker/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jtwp470/aws-tools-with-docker.svg?style=flat-square)](https://hub.docker.com/r/jtwp470/aws-tools-with-docker/)


This image is optimized for CircleCI 2.0 included with [AWS CLI](https://aws.amazon.com/cli/?nc1=h_ls) and [AWS Elastic Beanstalk CLI (EBCLI)](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html).


## Tools

- [AWS CLI](https://aws.amazon.com/cli/)
- [AWS Elastic Beanstalk CLI (EB CLI)](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html)
- [Amazon ECS CLI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI.html)
- [docker-compose](https://docs.docker.com/compose/)
- [docker-machine](https://docs.docker.com/machine/)

## Usage
Use this image with CircleCI 2.0 like this `.circleci/config.yml`

```yaml
version: 2
jobs:
  build:
    docker:
      - image: jtwp470/aws-tools-with-docker
    steps:
      - run:
          name: Show aws cli version
          command: |
            aws --version
      - run:
          name: Show aws eb version
          command: |
            eb --version
```
