FROM registry.betuple.com/gradle5

RUN mkdir /application
WORKDIR /application

RUN groupadd gradle -g 1000 && \
    useradd -u 1000 -g gradle -m -d /home/gradle -s /sbin/nologin gradle && \
    chown gradle:gradle -R /application

USER gradle

RUN mkdir /home/gradle/.gradle
