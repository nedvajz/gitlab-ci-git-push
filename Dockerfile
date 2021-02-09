FROM alpine:latest
RUN apk add --no-cache bash git openssh-client rsync libressl lftp
/bin/sh -c mkdir -p /cache/{composer,yarn,npm,bower}
VOLUME [/cache]
ENV COMPOSER_CACHE_DIR=/cache/composer
ENV NPM_CONFIG_CACHE=/cache/npm
ADD git-push /usr/local/bin/
