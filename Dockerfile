FROM node:12-alpine

WORKDIR /usr/app

COPY package.json .

USER node

RUN yarn install --network-timeout 1000000000

COPY . .

EXPOSE 3000

CMD yarn start
