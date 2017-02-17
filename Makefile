# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: karvin <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/21 10:00:36 by karvin            #+#    #+#              #
#    Updated: 2017/02/17 13:15:30 by karvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:= fillit

CC			:= gcc
FLAGS		:= -Wall -Werror -Wextra

SRCDIR		:= ./src
OBJDIR		:= ./obj
INCDIR		:= ./inc

LIBFT		:= ./lib/libft.a
LIBINC		:= -I./lib
LIBLNK		:= -L./lib -lft

SRC			:= ./src/main.c
INC			:= -I/inc/fillit.h

all:
	@make -C ./lib
	$(CC) -o $(NAME) $(INC) $(LIBINC) $(FLAGS) $(SRC) $(LIBFT)

clean:
	@make clean -C ./lib

fclean:	clean
	@make fclean -C ./lib
	@rm -rf $(NAME)

re:	fclean all
