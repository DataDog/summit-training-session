#!/bin/bash
docker stop some-zookeeper
docker rm some-zookeeper
docker run --name some-zookeeper --restart always -d -l com.datadoghq.ad.check_names:'["zk"]' -l com.datadoghq.ad.init_configs:'[{}]' -l com.datadoghq.ad.instances:'[{"host":"%%host%%", "port":"2181"}]' zookeeper
