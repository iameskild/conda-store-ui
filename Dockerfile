FROM node:16.16-alpine3.15

WORKDIR /usr/src/app

COPY . .

RUN yarn install --network-timeout 600000

RUN NODE_ENV=production yarn webpack build --config ./webpack.config.js

RUN mv .env.example .env

COPY scripts /scripts/

EXPOSE 8123

CMD ["/bin/sh", "/scripts/run.sh"]
