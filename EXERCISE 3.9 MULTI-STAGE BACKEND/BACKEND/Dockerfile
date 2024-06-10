FROM golang:1.16-alpine3.15 as build-stage

WORKDIR /usr/src/app/

COPY . .

RUN <<EOF
go mod download
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /usr/src/app/server -v .
EOF

FROM scratch

EXPOSE 8080

COPY --from=build-stage /usr/src/app  /usr/src/app

CMD ["/usr/src/app/server"]
 



