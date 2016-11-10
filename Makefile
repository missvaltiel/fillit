# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: karvin <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/21 10:00:36 by karvin            #+#    #+#              #
#    Updated: 2016/11/09 23:42:07 by karvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	:= fillit
VERS	:= 1.0.0
ATHR	:= karvin

INCD	:= ./include
LIBD	:= ./lib
OBJD	:= ./build
OUTD	:= .
SRCD	:= ./src

CMPR	:= gcc
FLGS	:= -Wall -Werror -Wextra -I $(INCD)

COMP	:= $(CMPR) $(FLGS)

INPT	:=
OTPT	:= fillit

SORC	:= $(addsuffix .c,$(addprefix $(SRCD)/,$(INPT)))
OBJC	:= $(addsuffix .o,$(addprefix $(OBJD)/,$(INPT)))
OUT		:= $(addprefix $(OUTD)/,$(OTPT))

all: $(OUT)

clean:
	@echo No object files! Cannot complete clean.

fclean: clean
	rm -f $(OUT)

re: fclean all

.PHONY: all clean fclean re

$(NAME): $(SORC)
	$(COMP) $(SORC) -o $(NAME)
