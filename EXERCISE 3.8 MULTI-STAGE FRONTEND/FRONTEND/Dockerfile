FROM node:15.4-alpine3.10 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN <<EOF
npm install
npm run build
EOF


FROM node:15.4-alpine3.10

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

EXPOSE 5000

RUN <<EOF
npm install -g serve
addgroup -S appgroup && adduser -S appuser -G appgroup
chown appuser .
EOF

USER appuser

CMD serve -s -l 5000 build

#CMD sh



