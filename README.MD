Demo debezium based on https://debezium.io/documentation/reference/stable/tutorial.html

Run:
1. `sh run.sh`
2. `sh register_connector.sh`
3. `sh verify_connector.sh`
4. Watch changes by `sh watch.sh` or connect to kafka using address `127.0.0.1:9092`
5. Change records in `inventory.customers`. Database credentials are in `run.sh`.

Todo:
- create docker-compose.yml