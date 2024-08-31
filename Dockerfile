FROM node:alpine

# Install bash
RUN apk add --no-cache bash
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /usr/src/app
COPY . .
RUN npm i
RUN ls -l


CMD ["npm", "run", "test"]

ENTRYPOINT ["entrypoint.sh"]