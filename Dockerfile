from elasticsearch:5.6.16-alpine

#https://logging.apache.org/log4j/2.x/manual/configuration.html
# COPY log4j2.properties config/log4j2.properties
COPY log4j2b.properties config/log4j2.properties

RUN rm -rf /usr/share/elasticsearch/lib/log4j-core-2.11.1.jar
RUN rm -rf /usr/share/elasticsearch/lib/log4j-api-2.11.1.jar
COPY log4j-api-2.17.2.jar  lib/log4j-api-2.17.2.jar
COPY log4j-core-2.17.2.jar lib/log4j-core-2.17.2.jar
COPY log4j-layout-template-json-2.17.2.jar lib/log4j-layout-template-json-2.17.2.jar


#Dec  6  2018 log4j-core-2.11.1.jar
#Dec  6  2018 log4j-api-2.11.1.jar
#Dec  6  2018 log4j-1.2-api-2.11.1.jar