FROM node:alpine

# Install bash
RUN apk add --no-cache bash
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]