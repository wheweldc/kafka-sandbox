#!/bin/bash

${KAFKA_HOME}/bin/kafka-topics.sh --zookeeper localhost:2181 --create --topic double --partitions 2 replication-factor 2

${KAFKA_HOME}/bin/kafka-topics.sh --zookeeper localhost:2181 --create --topic single --partitions 1 replication-factor 2

