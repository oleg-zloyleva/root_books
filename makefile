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

set_user_permit:
	@sudo chown -R $(USER):$(USER) $(CURDIR)

#####################################
###                               ###
###       Start/stop project      ###
###                               ###
#####################################

start_local: #start docker container for LOCAL ENV
	@sudo docker-compose -f docker-compose.yml -f docker-compose-local.yml up -d

start_prod: #start docker container for LOCAL ENV
	@sudo docker-compose -f docker-compose.yml -f docker-compose-prod.yml up -d

stop_local: #stop docker container
	@sudo docker-compose -f docker-compose.yml -f docker-compose-local.yml down

stop_prod: #stop docker container
	@sudo docker-compose -f docker-compose.yml -f docker-compose-prod.yml down

show: #show docker's containers
	@sudo docker ps

connect_powerliftguru_app: #Connect
	@sudo docker exec -it powerliftguru_com-app bash

# connect_db: #Connect
# 	@sudo docker exec -it $(db) bash

# connect_webserver: #Connect
# 	@sudo docker exec -it $(webserver) /bin/sh




up:
	@docker-compose ${DOCKER_CONFIG} up -d

down:
	@docker-compose ${DOCKER_CONFIG} down

down-volume:
	@docker-compose ${DOCKER_CONFIG} down -v

build:
	@docker-compose ${DOCKER_CONFIG} build

ps:
	@docker-compose ${DOCKER_CONFIG} ps



connect_db:
	@docker-compose ${DOCKER_CONFIG} exec db bash

connect_db_api:
	@docker-compose ${DOCKER_CONFIG} exec db_api bash

connect_node:
	@docker-compose ${DOCKER_CONFIG} exec nodejs sh

connect_webserver:
	@docker-compose ${DOCKER_CONFIG} exec webserver sh


fresh:
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/ 									app_api									php artisan migrate:fresh --seed
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/astixlimited.com/ 					astixlimited_com_web					php artisan migrate:fresh --seed
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/fillingyoga.com/ 					fillingyoga_com_web						php artisan migrate:fresh --seed
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/marathonexpert.com/ 				marathonexpert_com_web					php artisan migrate:fresh --seed
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/powerliftguru.com/ 				powerliftguru_com_web					php artisan migrate:fresh --seed
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/yourdailyworkouts.com/ 			yourdailyworkouts_com_web				php artisan migrate:fresh --seed
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/yourfitnesstrainer365.com/ 		yourfitnesstrainer365_com_web			php artisan migrate:fresh --seed


vendor:
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/ 									app_api									composer install
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/astixlimited.com/ 					astixlimited_com_web					composer install
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/fillingyoga.com/ 					fillingyoga_com_web						composer install
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/marathonexpert.com/ 				marathonexpert_com_web					composer install
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/powerliftguru.com/ 				powerliftguru_com_web					composer install
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/yourdailyworkouts.com/ 			yourdailyworkouts_com_web				composer install
	@docker-compose ${DOCKER_CONFIG} exec -u www -w /var/www/yourfitnesstrainer365.com/ 		yourfitnesstrainer365_com_web			composer install

