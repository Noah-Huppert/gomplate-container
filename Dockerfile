FROM alpine:latest

RUN apk add --no-cache --update gomplate

ENTRYPOINT [ "/usr/bin/gomplate"  ]
