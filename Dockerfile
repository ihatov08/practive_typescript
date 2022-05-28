FROM node:16


RUN apt-get update -qq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install
