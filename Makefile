./PHONY: all build up down clean

all: build up


build:
	docker-compose -f srcs/docker-compose.yml build

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

logs:
	docker-compose -f srcs/docker-compose.yml logs wordpress
	docker-compose -f srcs/docker-compose.yml logs mariadb
	docker-compose -f srcs/docker-compose.yml logs nginx

clean: down
	docker-compose -f srcs/docker-compose.yml rm -f
	docker volume prune -f