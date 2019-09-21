FROM golang:latest

WORKDIR $GOPATH/src/github.com/katechun/go-gin-example
COPY . $GOPATH/src/github.com/katechun/go-gin-example
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]