FROM docker:26.1.4-alpine3.20

WORKDIR /usr/src/app

COPY magicScript.sh .

RUN <<EOF
chmod +x magicScript.sh
EOF

ENTRYPOINT ["sh",  "./magicScript.sh"]





