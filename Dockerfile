FROM alpine:latest
RUN apk add --no-cache bash git openssh-client rsync libressl lftp

VOLUME ["/cache"]
RUN mkdir -p /cache/{composer,npm}
ENV COMPOSER_CACHE_DIR=/cache/composer
ENV NPM_CONFIG_CACHE=/cache/npm

ADD git-push /usr/local/bin/
