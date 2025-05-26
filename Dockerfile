FROM node:22

WORKDIR /cache

COPY package*.json .

RUN npm ci

WORKDIR /app

COPY . .