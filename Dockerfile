FROM golang:latest-alpine

WORKDIR /app

#COPY go.mod ./
#COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /gohelloworldmweb

EXPOSE 8080

CMD [ "/gohelloworldweb" ]

