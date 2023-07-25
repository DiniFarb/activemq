ARG JAVA_RUNTIME_VERSION=21-bullseye
FROM openjdk:$JAVA_RUNTIME_VERSION

ENV ACTIVEMQ_VERSION=5.17.5
ENV ACTIVEMQ=apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_HOME=/opt/$ACTIVEMQ
ENV ACTIVEMQ_TCP=61616 ACTIVEMQ_AMQP=5672 ACTIVEMQ_STOMP=61613 ACTIVEMQ_MQTT=1883 ACTIVEMQ_WS=61614 ACTIVEMQ_UI=8161
ENV SHA512_VAL=336215ebbb4c8000341926b641dcec6ef675ab0ae4a56537a9edb4ac3085d22a8981e7dcaa9d3df9fc6511e0b8dd86489f663f9a52fba0a5b4044c0c05567f47



RUN curl "https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz" -o $ACTIVEMQ-bin.tar.gz

# Validate checksum
RUN if [ "$SHA512_VAL" != "$(sha512sum $ACTIVEMQ-bin.tar.gz | awk '{print($1)}')" ];\
    then \
        echo "sha512 values doesn't match! exiting."  && \
        exit 1; \
    fi;

RUN tar xzf $ACTIVEMQ-bin.tar.gz -C  /opt && \
    ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME && \
    useradd -r -M -d $ACTIVEMQ_HOME activemq && \
    chown -R activemq:activemq /opt/$ACTIVEMQ && \
    chown -h activemq:activemq $ACTIVEMQ_HOME 

USER activemq

COPY jetty.xml $ACTIVEMQ_HOME/conf/jetty.xml

WORKDIR $ACTIVEMQ_HOME

EXPOSE $ACTIVEMQ_TCP $ACTIVEMQ_AMQP $ACTIVEMQ_STOMP $ACTIVEMQ_MQTT $ACTIVEMQ_WS $ACTIVEMQ_UI

CMD ["/bin/sh", "-c", "bin/activemq console"]