FROM node:12

ENV CAKE_SERVICE_VERSION 0.3.2

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "dev:up" ]