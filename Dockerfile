FROM cogniteev/oracle-java

MAINTAINER Chris Millar <chris@millr.org>

RUN mkdir /opt/aem
WORKDIR /opt/aem/

ENV CQ_JVM_OPTS   "-server -Xmx1524M -Xms1200M -Djava.awt.headless=true"

COPY ./AEM_6.1_Quickstart.jar /opt/aem/AEM_6.1_Quickstart.jar
COPY ./start /opt/aem/start
RUN cd /opt/aem && java -Djava.awt.headless=true -jar AEM_6.1_Quickstart.jar -unpack

ENTRYPOINT ["/opt/aem/start"]
