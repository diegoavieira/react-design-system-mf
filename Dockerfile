FROM node:lts

WORKDIR /cache

COPY package*.json .

RUN npm install --silent

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY . .