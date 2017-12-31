FROM alpine

MAINTAINER Ryousuke Sato <rskjtwp@gmail.com>

RUN apk add --no-cache git openssh tar gzip ca-certificates py-pip
RUN pip install awscli awsebcli
CMD ["/bin/sh"]
