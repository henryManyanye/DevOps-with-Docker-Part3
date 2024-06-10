FROM ubuntu as build-stage

WORKDIR /usr/src/app/

COPY . .

RUN <<EOF
apt-get update
apt install -y g++
g++ assignmentQ1c.cpp -o assignmentQ1c
rm -rf /var/lib/apt/lists/*
EOF

FROM ubuntu

WORKDIR /usr/src/app/

COPY --from=build-stage /usr/src/app  /usr/src/app

RUN <<EOF
useradd -m appuser
chown appuser .
EOF

USER appuser

CMD ["./assignmentQ1c"]





