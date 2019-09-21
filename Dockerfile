FROM golang:latest

WORKDIR $GOPATH/src/blog
COPY . $GOPATH/src/blog

Run apt-get install git -y


Run go get github.com/Unknwon/com
Run go get github.com/astaxie/beego/validation
Run go get github.com/dgrijalva/jwt-go
Run go get github.com/go-ini/ini
Run go get github.com/jinzhu/gorm
Run go get github.com/jinzhu/gorm/dialects/mysql

Run mkdir -p $GOPATH/src/golang.org/x
Run cd $GOPATH/src/golang.org/x
Run git clone https://github.com/golang/sys.git

RUN go build .

EXPOSE 8000
ENTRYPOINT ["export GOPATH=","./blog"]