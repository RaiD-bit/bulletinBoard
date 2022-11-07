FROM golang:latest

RUN mkdir -p /go/src/bulletinBoard

WORKDIR /go/src/bulletinBoard

COPY . /go/src/bulletinBoard/

RUN go build -o /board

CMD [ "/board" ]

EXPOSE 8080 
