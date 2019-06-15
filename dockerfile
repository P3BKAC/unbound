FROM alpine:latest

#RUN apk add unbound
RUN apk --update --no-cache --progress -q add ca-certificates unbound bind-tools libcap
EXPOSE 53/tcp
EXPOSE 53/udp

CMD unbound -d -c /etc/unbound/unbound.conf
