
SRCS:=./srcs

DOCKER_IMAGES := $(shell docker images -qa)
DOCKER_CONTAINERS := $(shell docker ps -qa)
DOCKER_NETWORKS := $(shell docker network ls -q)
DOCKER_VOLUMES := $(shell docker volume ls -q)

all: up

up:
	docker compose -f ./srcs/docker-compose.yml up

down:
	docker compose -f $(SRCS)/docker-compose.yml down

clean: down
	@(docker stop $(DOCKER_CONTAINERS) 2>/dev/null || true)
	@(docker rm $(DOCKER_CONTAINERS) 2>/dev/nul || true)
	@(docker rmi -f $(DOCKER_IMAGES) 2>/dev/null || true)
	@(docker volume rm $(DOCKER_VOLUMES) 2>/dev/null || true)
	@(docker network rm $(DOCKER_NETWORKS) 2>/dev/null || true)
	@(echo Y | docker system prune 2>/dev/null || true)

fclean: clean
#	rm -rf /home/pedromar/data/mariadb/* /home/pedromar/data/wordpress/*

re: fclean all
