ARG JAVA_VERSION=8
FROM amazoncorretto:$JAVA_VERSION
ARG ACTIVEMQ_VERSION

ENV ACTIVEMQ_VERSION=$ACTIVEMQ_VERSION
ENV ACTIVEMQ=apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_HOME=/opt/$ACTIVEMQ
ENV ACTIVEMQ_TCP=61616 
ENV ACTIVEMQ_AMQP=5672 
ENV ACTIVEMQ_STOMP=61613 
ENV ACTIVEMQ_MQTT=1883 
ENV ACTIVEMQ_WS=61614 
ENV ACTIVEMQ_UI=8161

RUN yum -y install tar gzip shadow-utils && yum -y clean all  && rm -rf /var/cache

RUN curl "https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz" -o $ACTIVEMQ-bin.tar.gz

RUN tar -xzf $ACTIVEMQ-bin.tar.gz -C /opt && \
    ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME && \
    useradd -r -M -d $ACTIVEMQ_HOME activemq && \
    chown -R activemq:activemq /opt/$ACTIVEMQ && \
    chown -h activemq:activemq $ACTIVEMQ_HOME 

RUN rm -rf $ACTIVEMQ-bin.tar.gz

RUN sed -i 's/value="127.0.0.1"/value="0.0.0.0"/' $ACTIVEMQ_HOME/conf/jetty.xml

USER activemq

WORKDIR $ACTIVEMQ_HOME

EXPOSE $ACTIVEMQ_TCP $ACTIVEMQ_AMQP $ACTIVEMQ_STOMP $ACTIVEMQ_MQTT $ACTIVEMQ_WS $ACTIVEMQ_UI

CMD ["/bin/sh", "-c", "bin/activemq console"]
