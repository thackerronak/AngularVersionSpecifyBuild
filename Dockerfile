FROM node:8.12

MAINTAINER Ronak <ronak.thacker@smartsensesolutions.com>

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN apt-get update

RUN npm install

RUN npm install -g @angular/cli@1.7.4

COPY . .

RUN ng build --app app-customer --target=production --build-optimizer --output-hashing all
RUN ng build --app app-tech-admin --target=production --build-optimizer --output-hashing all


