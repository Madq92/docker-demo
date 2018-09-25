FROM jmxtrans/jmxtrans
RUN apk add --no-cache tar
ARG APP_HOME="/appHome"

RUN mkdir ${APP_HOME}  \
    && mkdir ${APP_HOME}/config

COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar ${APP_HOME}

WORKDIR ${APP_HOME}

CMD nohup java -jar docker-demo-0.0.1-SNAPSHOT.jar