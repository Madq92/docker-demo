FROM openjdk:8-jdk-alpine

RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

ENV APP_NAME docker-demo

WORKDIR /app

COPY target/docker-demo-0.0.1-SNAPSHOT.jar /app/${APP_NAME}.jar

CMD java -jar /app/${APP_NAME}.jar