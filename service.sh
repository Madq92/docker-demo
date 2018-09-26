#!/bin/bash

MONITOR_OPTS="-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.ssl=false \
              -Dcom.sun.management.jmxremote.authenticate=false \
              -Dcom.sun.management.jmxremote.port=9999 \
              -Dcom.sun.management.jmxremote.rmi.port=9999 \
              -Djava.rmi.server.hostname=localhost \
              -Dhost.name=$HOSTNAME"

(nohup java ${MONITOR_OPTS} -jar ${SERVICE_FILE} &) \
 && java -DhostName=$HOSTNAME -jar /usr/share/jmxtrans/lib/jmxtrans-all.jar -e -j /var/lib/jmxtrans -s 5 -c  false