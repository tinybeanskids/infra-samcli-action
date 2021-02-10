# This is a Github action that contains sam-cli
See: https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-getting-started.html

It uses a docker image in ECR with pip packages installed as specified in requirements.txt to ECR as specified in docker/base

```
aws-sam-cli>=1.17.0
```

## Usage

Set your ENV and write a command including AWS SAM-CLI to `cmd`.

- `cmd` can have `bash` command.
- `cmd` can have commands other than **sam** .

```yml
steps:
  - name: sam cli
    uses: tinybeanskids/infra-samcli-action@v1
    env:
      AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
      AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
      AWS_DEFAULT_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
    with:
      cmd: 'sam --version'
```

## ENV

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_DEFAULT_REGION
