FROM ubuntu:latest

WORKDIR /usr/src/app/

COPY . .

RUN <<EOF
apt-get update
apt install -y g++
g++ assignmentQ1c.cpp -o assignmentQ1c
EOF

CMD ["./assignmentQ1c"]





