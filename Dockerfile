FROM node:22

WORKDIR /cache

COPY package*.json .

RUN npm install --silent

WORKDIR /app

COPY . .