FROM golang:latest

ENV GOPATH="/go"
WORKDIR $GOPATH/src/blog

Run apt-get install git -y

Run go get github.com/Unknwon/com && \
 go get github.com/astaxie/beego/validation && \
 go get github.com/dgrijalva/jwt-go && \
 go get github.com/go-ini/ini && \
 go get github.com/jinzhu/gorm && \
 go get github.com/jinzhu/gorm/dialects/mysql 

COPY . ./

Run mkdir -p /go/src/golang.org/x/sys
Run git clone https://github.com/golang/sys.git /go/src/golang.org/x/sys
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./blog"]
