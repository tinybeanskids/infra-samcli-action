# https://github.com/lambci/docker-lambda
FROM amazonlinux:2
LABEL MAINTAINER="Tinybeans <tech@tinybeans.com>"

RUN yum install -y which python3-devel shadow-utils && \
  pip3 install -U pip setuptools --no-cache-dir && \
  yum clean all && rm -rf /var/cache/yum

ENV AWS_DEFAULT_REGION us-west-2
ENV SAM_CLI_TELEMETRY 0

COPY requirements.txt requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
