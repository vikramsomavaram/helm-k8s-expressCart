FROM mhart/alpine-node:8

ENV NODE_VERSION 8.9.4

RUN apk add --no-cache make gcc g++ python bash

WORKDIR /var/expressCart

COPY . /var/expressCart

RUN npm install

VOLUME /var/expressCart/data

EXPOSE 1111
ENTRYPOINT ["npm", "start"]
