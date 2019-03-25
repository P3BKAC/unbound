FROM alpine:latest

RUN apk add unbound

EXPOSE 53/tcp
EXPOSE 53/udp

CMD unbound -d -c /etc/unbound/unbound.conf
