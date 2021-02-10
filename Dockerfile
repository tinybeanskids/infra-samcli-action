FROM 375215620020.dkr.ecr.us-west-2.amazonaws.com/tinybeans/infra-samcli-action:feb7f95

WORKDIR /app

COPY ./ ./

ENTRYPOINT [ "/bin/bash", "-c" ]
