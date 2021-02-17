FROM 375215620020.dkr.ecr.us-west-2.amazonaws.com/tinybeans/infra-samcli-action:latest

WORKDIR /app

COPY ./ ./

ENTRYPOINT ["/app/entrypoint.sh"]
