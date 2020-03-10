FROM alpine:latest

RUN apk add --no-cache bash git openssh-client rsync lftp

ADD git-push /usr/local/bin/
