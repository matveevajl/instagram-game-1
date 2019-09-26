FROM golang:1.12

RUN mkdir /application
WORKDIR /application

RUN groupadd godev -g 1000 && \
    useradd -u 1000 -g godev -m -d /home/godev -s /sbin/nologin godev && \
    chown godev:godev -R /application

USER godev

RUN mkdir -p /application/src/insta1

RUN mkdir /home/godev/source
RUN mkdir -p /home/godev/.go/pkg

ENV GOPATH /home/godev/.go
