FROM golang:1.22-alpine
WORKDIR /usr/src/app
COPY . .
RUN go mod download
# Сборка исполняемого файла
RUN go build -o /ProjectAvp
# Запуск исполняемого файла
CMD ["./ProjectAvp"]