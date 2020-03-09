#!/bin/bash
mvn package
winpty docker cp target/Map_Reduce-1.0-SNAPSHOT-jar-with-dependencies.jar docker-hive-master_namenode_1:MapReduce-1.0-SNAPSHOT.jar
winpty docker cp docker.sh docker-hive-master_namenode_1:docker.sh
winpty docker cp 000000 docker-hive-master_namenode_1:000000
winpty docker exec -it docker-hive-master_namenode_1 bash docker.sh
read -p "press enter"
