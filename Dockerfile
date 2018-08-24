FROM node:8

WORKDIR /app

COPY . /app

RUN npm i --silent

RUN npm run build
