FROM golang:1.5.1
MAINTAINER koudaiii "cs006061@gmail.com"

RUN go get github.com/tsenart/vegeta
RUN go install github.com/tsenart/vegeta

RUN mkdir /var/data
ENTRYPOINT ["/go/bin/vegeta"]
