FROM golang:1.22-alpine

WORKDIR /usr/src/app

COPY . .

RUN go mod download

# Сборка исполняемого файла
RUN go build -o /projectAvp

# Запуск исполняемого файла
CMD ["./projectAvp"]