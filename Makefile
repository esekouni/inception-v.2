all : init
	docker-compose -f ./srcs/docker-compose.yml up

init : 
	bash ./srcs/requirements/tools/script.sh

fclean : clean
	sudo rm -rf /home/esekouni/data
	sudo rm -rf ./srcs/requirements/ngnix/tools
	docker system prune -af

clean :
	docker-compose -f ./srcs/docker-compose.yml down

re : fclean all

