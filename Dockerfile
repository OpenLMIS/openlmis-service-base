FROM anapsix/alpine-java:jre8

COPY package.json /package.json
COPY run.sh /run.sh
COPY wait-for-postgres.sh /wait-for-postgres.sh

RUN chmod +x run.sh \
  && apk update \
  && apk add nodejs \
  && npm install

EXPOSE 8080
CMD ./run.sh
