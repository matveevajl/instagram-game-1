FROM registry.betuple.com/node8

RUN groupadd node -g 1000 && \
    useradd -u 1000 -g node -m -d /home/node -s /sbin/nologin node

WORKDIR /home/node

USER node
