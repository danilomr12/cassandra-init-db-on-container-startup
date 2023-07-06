

default: @echo "default"

start:
	 docker-compose -f .\docker-compose\docker-compose.yaml up

stop:
	docker-compose -f .\docker-compose\docker-compose.yaml down