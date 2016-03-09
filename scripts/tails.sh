#!/bin/bash

gnome-terminal --title log1/kafka.log          --command='tail -F logs/log1/kafka.log' &
gnome-terminal --title log2/kafka.log          --command='tail -F logs/log2/kafka.log' &
gnome-terminal --title zookeeper/zookeeper.log --command='tail -F logs/zookeeper/zookeeper.log' &
