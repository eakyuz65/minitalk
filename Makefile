# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eakyuz <eakyuz@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/23 14:44:52 by eakyuz            #+#    #+#              #
#    Updated: 2023/05/30 18:25:51 by eakyuz           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAMESERVER = server
NAMECLIENT = client
SRCSERVER = server.c
SRCCLIENT = client.c
FLAGS = -Wall -Wextra -Werror
CC = gcc
OBJSERVER = $(SRCSERVER:.c=.o)
OBJCLIENT = $(SRCCLIENT:.c=.o)

all: $(NAMESERVER) $(NAMECLIENT)

$(NAME) : all

$(NAMESERVER) : $(OBJSERVER)
	$(CC) $(OBJSERVER) -o $(NAMESERVER) 
$(NAMECLIENT) : $(OBJCLIENT)
	$(CC) $(OBJCLIENT) -o $(NAMECLIENT) 

clean:
	rm -rf $(OBJSERVER) $(OBJCLIENT)

fclean: clean
	rm -rf $(NAMESERVER) $(NAMECLIENT)

re:fclean all

.PHONY : re fclean clean all re
