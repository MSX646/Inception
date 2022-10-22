all:
	@docker-compose -f ./srcs/docker-compose.yml up

build:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	@docker system prune -a

fclean:
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes
	@docker volume prune --force

re: fclean build

.PHONY	: all build down re clean fclean
