FROM node:alpine

# Install bash
RUN apk add --no-cache bash

WORDIR /github/workspace

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]