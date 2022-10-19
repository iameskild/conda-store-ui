FROM node:16.16-alpine3.15

WORKDIR /usr/src/app

COPY . .

RUN yarn install

RUN mv .env.example .env

EXPOSE 8123

CMD [ "yarn", "webpack-dev-server", "--port", "8123", "--allowed-hosts", "all" ]