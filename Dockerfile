FROM golang:1.5.1
MAINTAINER koudaiii "cs006061@gmail.com"
ENV PATH="/go/bin/vegeta:$PATH"
COPY . /app

RUN go get github.com/tsenart/vegeta
RUN go install github.com/tsenart/vegeta

WORKDIR /app
CMD ["/bin/bash", "./start.sh"]
