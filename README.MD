Demo debezium based on https://debezium.io/documentation/reference/stable/tutorial.html

Run:
1. `cd mysql`
1. `docker-compose up -d`
2. `sh register_connector.sh`
3. `sh verify_connector.sh`
4. Connect to kafka using address `127.0.0.1:9092` (with phpstorm kafka plugin)
5. Change records in `inventory.customers`. Database credentials are in `docker-compose.yml`.