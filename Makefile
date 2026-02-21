init:
	mkdir -p data/db # create db directory

up:
	docker-compose -f docker/docker-compose.yaml up -d
down:
	docker-compose -f docker/docker-compose.yaml down

restart: down up



