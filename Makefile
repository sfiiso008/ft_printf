# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: smbonan <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/02 15:08:50 by smbonan           #+#    #+#              #
#    Updated: 2018/08/02 15:10:36 by smbonan          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CFLAGS = -Wall -Werror -Wextra -I.

CC = gcc -c

SRCS = 	*.c
OBJS = *.o

all : $(NAME)
$(NAME) :
	$(CC) $(SRCS) $(CFLAGS)
	ar -rcs $(NAME) $(OBJS)
	ranlib $(NAME)

clean :
	rm -f  $(OBJS)

fclean :
	rm -f $(OBJS) $(NAME)

re : fclean all
