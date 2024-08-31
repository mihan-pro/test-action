FROM node:alpine

# Install bash
RUN apk add --no-cache bash
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /usr/src/app
RUN ls
COPY package*.json ./
RUN npm install

ENTRYPOINT ["entrypoint.sh"]