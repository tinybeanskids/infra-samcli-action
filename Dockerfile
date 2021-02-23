FROM 375215620020.dkr.ecr.us-west-2.amazonaws.com/tinybeans/infra-samcli-action:latest

ENV SAM_CLI_TELEMETRY 0
WORKDIR /app

COPY ./ ./

ENTRYPOINT ["/app/entrypoint.sh"]
