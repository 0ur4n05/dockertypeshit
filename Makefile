# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhorbax </var/spool/mail/lhorbax>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/11 21:04:41 by lhorbax           #+#    #+#              #
#    Updated: 2024/01/22 19:05:23 by lhorbax          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKERCMF=--file srcs/docker-compose.yml
CREATEVOL=/bin/sh ./srcs/requirements/tools/volumes.sh

all :
	# docker stop $$(docker ps -a -q)
	# docker rmi --force $$(docker images -a -q)
	$(CREATEVOL) setup
	docker compose $(DOCKERCMF) up -d --build

clean :
	$(CREATEVOL) clean
	docker compose $(DOCKERCMF) down
	echo y | docker buildx prune

fclean : clean
	echo y | docker system prune -a

re : fclean all
