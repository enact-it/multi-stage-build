FROM golang:tip-alpine3.22

WORKDIR /app

COPY main.go go.mod ./

RUN go mod download

RUN go build -o hello .

ENTRYPOINT ["/app/hello"]
