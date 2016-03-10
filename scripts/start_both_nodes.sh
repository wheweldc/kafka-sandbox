#!/bin/bash

${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_SANDBOX}/config/server.properties \
 --override log.dirs=${KAFKA_SANDBOX}/data/log1 \
 --override broker.id=0 \
 --override listeners=PLAINTEXT://:9092 \
 --override port=9092 \
 > ${KAFKA_SANDBOX}/logs/log1/kafka.log &

${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_SANDBOX}/config/server.properties \
 --override log.dirs=${KAFKA_SANDBOX}/data/log2 \
 --override broker.id=1 \
 --override listeners=PLAINTEXT://:9093 \
 --override port=9093 \
 > ${KAFKA_SANDBOX}/logs/log2/kafka.log &

