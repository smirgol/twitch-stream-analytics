init:
	mkdir -p data/db # create db directory


up:
	docker-compose -f docker/docker-compose.yaml up -d --build
	$(MAKE) login-web
down:
	docker-compose -f docker/docker-compose.yaml down
start:
	docker-compose -f docker/docker-compose.yaml start
stop:
	docker-compose -f docker/docker-compose.yaml stop

restart: down up

login-web:
	docker-compose -f docker/docker-compose.yaml exec web bash

