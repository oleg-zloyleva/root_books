include .env
export

webserver = $(DOCKER_PREFIX)-webserver
db = $(DOCKER_PREFIX)-db
app = powerliftguru_com-app

#####################################
###                               ###
### MakeFile for Laravel Skeleton ###
###                               ###
#####################################


echo:
	@echo $(php)

help: #prints list of commands
	@cat ./makefile | grep : | grep -v "grep"


#####################################
###                               ###
###       Start/stop project      ###
###                               ###
#####################################

start: #start docker container
	@sudo docker-compose up -d

start_local: #start docker container for LOCAL ENV
	@sudo docker-compose -f docker-compose.yml -f docker-compose-local.yml up -d

stop: #stop docker container
	@sudo docker-compose down

stop_local: #stop docker container
	@sudo docker-compose -f docker-compose.yml -f docker-compose-local.yml down

show: #show docker's containers
	@sudo docker ps

connect_powerliftguru_app: #Connect
	@sudo docker exec -it powerliftguru_com-app bash

connect_db: #Connect
	@sudo docker exec -it $(db) bash

connect_webserver: #Connect
	@sudo docker exec -it $(webserver) /bin/sh