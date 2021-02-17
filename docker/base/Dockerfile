# https://github.com/lambci/docker-lambda
FROM amazonlinux:2
LABEL MAINTAINER="Tinybeans <tech@tinybeans.com>"

RUN yum install -y which python3-devel shadow-utils && \
  pip3 install -U pip setuptools --no-cache-dir && \
  yum clean all && rm -rf /var/cache/yum

RUN groupadd --gid 1000 aws && \
    useradd -mru 1000 -g aws --shell /bin/bash aws && \
    mkdir -p /app && chown aws:aws /app

ENV AWS_DEFAULT_REGION us-west-2

COPY requirements.txt requirements.txt

USER aws
RUN pip3 install --no-cache-dir -r requirements.txt

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
