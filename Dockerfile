FROM golang:1-alpine

WORKDIR /usr/src/app

COPY . .

RUN apk add --no-cache && go mod tidy