FROM node:15-alpine3.10@sha256:379de8e7f044780ac6bb53500923ce5e702c7384b470eb9f862d5a7d10e629cf
MAINTAINER "Stefan Walther"

ARG PORT=9696

ENV PORT=$PORT
ENV HOME /home

RUN mkdir -p $HOME
WORKDIR $HOME

COPY . /home

RUN npm install --quiet

EXPOSE $PORT

CMD ["npm", "run", "start"]
