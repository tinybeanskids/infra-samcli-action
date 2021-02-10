FROM

WORKDIR /app

COPY ./ ./

ENTRYPOINT [ "/bin/bash", "-c" ]
