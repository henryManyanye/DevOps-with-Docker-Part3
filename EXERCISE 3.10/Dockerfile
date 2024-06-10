FROM ubuntu

WORKDIR /usr/src/app/

COPY . .

RUN <<EOF
apt-get update
apt-get install g++
g++ assignmentQ1c.cpp -o assignmentQ1c
EOF

CMD ["./assignmentQ1c"]



#
# FROM scratch
#
#
# COPY --from=build-stage /usr/src/app  /usr/src/app
#
# CMD ["/usr/src/app/server"]
#



