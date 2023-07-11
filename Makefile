

default: @echo "default"

build:
	docker build --file .\docker-compose\single-node\Dockerfile -tag  .

start:
	 docker-compose -f .\docker-compose\single-node\docker-compose.yaml up -d

down:
	docker-compose -f .\docker-compose\single-node\docker-compose.yaml down

connect:
	docker container exec -it cassandra_db bash

cqlsh:
	docker container exec -it cassandra_db cqlsh cassandra_db -u 'cassandra' -p 'cassandra';

copy-csv:
	docker cp .\trips.csv cassandra_db:/home

cluster-start:
	docker-compose -f .\docker-compose\clustered\docker-compose.yaml up -d

cluster-status:
	docker exec cass1 nodetool status

cluster-connect:
	docker container exec -it cass1 bash

cluster-cqlsh:
	docker container exec -it cass1 cqlsh -u 'cassandra' -p 'cassandra';

get-cassandra-config:
	docker run --rm -d --name tmp cassandra:3.11.8
	docker cp tmp:/etc/cassandra etc_cassandra-3.11.8_vanilla
	docker stop tmp

copy-cassandra-config:
	mkdir -p docker-compose/clustered/etc
  	#cp -a etc_cassandra-3.11.8_vanilla docker-compose/clustered/etc/cass1
    #cp -a etc_cassandra-3.11.8_vanilla docker-compose/clustered/etc/cass2
    #cp -a etc_cassandra-3.11.8_vanilla docker-compose/clustered/etc/cass3
