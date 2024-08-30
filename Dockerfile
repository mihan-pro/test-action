FROM node:alpine

RUN apk add --no-cashe \
     bash

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]