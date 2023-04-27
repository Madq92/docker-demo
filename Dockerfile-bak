FROM jmxtrans/jmxtrans
ENV APP_HOME /appHome
ENV SERVICE_FILE docker-demo-0.0.1-SNAPSHOT.jar
RUN mkdir ${APP_HOME} && mkdir ${APP_HOME}/config

COPY ./target/${SERVICE_FILE} ${APP_HOME}
COPY ./service.sh ${APP_HOME}
COPY ./jmxtrans.json /var/lib/jmxtrans

WORKDIR ${APP_HOME}
RUN chmod +x service.sh

EXPOSE 8080
CMD ./service.sh