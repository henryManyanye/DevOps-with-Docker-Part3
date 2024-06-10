FROM golang:1.16-alpine3.15

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .
# COPY go1.16.linux-amd64.tar.gz .

RUN <<EOF 
export PATH=$PATH:/usr/local/go/bin && export REQUEST_ORIGIN=http://localhost && go build
addgroup -S appgroup && adduser -S appuser -G appgroup
chown appuser .
EOF

USER appuser
 
CMD ./server
 



