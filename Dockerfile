FROM golang:1.13

ENV GO111MODULE=on

WORKDIR /fail2rest

COPY . .

RUN go mod download

RUN go build

EXPOSE 8080

ENTRYPOINT ./fail2rest
