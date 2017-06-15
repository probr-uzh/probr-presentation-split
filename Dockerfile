FROM node:slim

ADD package.json package.json
ADD package-lock.json package-lock.json

RUN npm install

ADD . /

ENTRYPOINT ["node", "server.js"]

EXPOSE 8080