
SRCS:=./srcs

DOCKER_IMAGES := $(shell docker images -qa)
DOCKER_CONTAINERS := $(shell docker ps -qa)
DOCKER_NETWORKS := $(shell docker network ls -q)
DOCKER_VOLUMES := $(shell docker volume ls -q)

all: up

up:
	docker compose -f $(SRCS)/docker-compose.yml up

down:
	docker compose down

logs:
	docker compose logs

ps:
	docker compose ps

clean:
	@(docker stop $(DOCKER_CONTAINERS) || true; \
	docker rm $(DOCKER_CONTAINERS) || true; \
	docker rmi -f $(DOCKER_IMAGES) || true; \
	docker volume rm $(DOCKER_VOLUMES) || true; \
	docker network rm $(DOCKER_NETWORKS) || true;) 2>/dev/null