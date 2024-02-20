FROM hotswapagent/hotswap-vm

COPY package.json /package.json
COPY run.sh /run.sh
COPY wait-for-postgres.sh /wait-for-postgres.sh

RUN chmod +x run.sh \
  && apk update \
  && apk add bash \
  && apk add nodejs-current-npm \
  && apk add postgresql-client \
  && apk add postgresql \
  && npm install

EXPOSE 8080
CMD ./run.sh
