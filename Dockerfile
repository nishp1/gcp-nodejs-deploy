FROM node:8-alpine

ENV HOME=/nish/

RUN apk add --update --no-cache python py-pip ca-certificates wget tar curl
RUN update-ca-certificates

WORKDIR $HOME

ADD package.json yarn.lock $HOME
WORKDIR $HOME
RUN yarn

RUN yarn cache clean
