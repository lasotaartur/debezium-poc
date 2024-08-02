Demo debezium based on https://debezium.io/documentation/reference/stable/tutorial.html and https://github.com/debezium/debezium-examples/tree/main/tutorial

Run:
1. `cd mysql` or `cd postgres`
1. `docker-compose up -d`
2. `sh register_connector.sh`
3. `sh verify_connector.sh`
4. Connect to kafka using address `127.0.0.1:9092` (with phpstorm kafka plugin)
5. Change records in `inventory.customers`. Database credentials are in `docker-compose.yml`.