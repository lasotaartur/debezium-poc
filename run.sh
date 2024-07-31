docker run --rm --name zookeeper -p 2181:2181 -p 2888:2888 -p 3888:3888 -d quay.io/debezium/zookeeper:2.7
docker run --rm --name kafka -p 9092:9092 --link zookeeper:zookeeper -d quay.io/debezium/kafka:2.7
docker run -it --rm --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=debezium -e MYSQL_USER=mysqluser -e MYSQL_PASSWORD=mysqlpw -d quay.io/debezium/example-mysql:2.7
docker run -it --rm --name connect -p 8083:8083 -e GROUP_ID=1 -e CONFIG_STORAGE_TOPIC=my_connect_configs -e OFFSET_STORAGE_TOPIC=my_connect_offsets -e STATUS_STORAGE_TOPIC=my_connect_statuses --link kafka:kafka --link mysql:mysql -d quay.io/debezium/connect:2.7
docker run -it --rm --name watcher --link zookeeper:zookeeper --link kafka:kafka -d quay.io/debezium/kafka:2.7 watch-topic -a -k dbserver1.inventory.customers