# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: karvin <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/21 10:00:36 by karvin            #+#    #+#              #
#    Updated: 2017/02/13 13:59:59 by karvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	:= fillit

LIB		:= ./lib/libft.a
SRC		:= ./src/main.c
INC		:= ./inc
OBJ		:= $(addprefix $(OBJDIR),$(SRC:.c=.o))

CC		:= gcc
FLAGS	:= -Wall -Werror -Wextra

all: $(NAME)

$(NAME)	:
		$(CC) -o $(NAME) $(FLAGS) $(SRC) -I $(LIB) -L (LIB) -lft

clean:
	rm -rf $(OBJDIR)

fclean:	clean
		rm -f $(NAME)

re:	fclean all
