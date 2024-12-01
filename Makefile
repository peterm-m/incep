
SRCS:=./srcs

DOCKER_IMAGES := $(shell docker images -qa)
DOCKER_CONTAINERS := $(shell docker ps -qa)
DOCKER_NETWORKS := $(shell docker network ls -q)
DOCKER_VOLUMES := $(shell docker volume ls -q)

all: up

up:
	@docker compose -f ./srcs/docker-compose.yml up -d

down:
	@docker compose -f ./srcs/docker-compose.yml down

start : 
	@docker compose -f ./srcs/docker-compose.yml start

clean: down
	@(docker stop $(DOCKER_CONTAINERS) 2>/dev/null || true)
	@(docker rm $(DOCKER_CONTAINERS) 2>/dev/nul || true)
	@(docker rmi -f $(DOCKER_IMAGES) 2>/dev/null || true)
	@(docker volume rm $(DOCKER_VOLUMES) 2>/dev/null || true)
	@(docker network rm $(DOCKER_NETWORKS) 2>/dev/null || true)
	@(echo Y | docker system prune 2>/dev/null || true)

status : 
	@docker ps

re: clean all

