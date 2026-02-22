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
	docker-compose -f docker/docker-compose.yaml exec -u 1000:1000 web bash
login-web-root:
	docker-compose -f docker/docker-compose.yaml exec -u 0:0 web bash

log:
	docker-compose -f docker/docker-compose.yaml logs web -f
