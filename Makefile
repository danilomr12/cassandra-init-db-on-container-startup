

default: @echo "default"

start:
	 docker-compose -f .\docker-compose\docker-compose.yaml up

stop:
	docker-compose -f .\docker-compose\docker-compose.yaml down

connect:
	docker container exec -it docker-compose-cassandra_db-1 bash