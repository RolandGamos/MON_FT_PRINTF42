# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lweglarz <lweglarz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/15 14:11:55 by lweglarz          #+#    #+#              #
#    Updated: 2020/07/28 15:20:33 by lweglarz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libftprintf.a

SRCS= ft_printf.c utils1display.c utils2.c utils3.c utils4.c ft_flags_init.c ft_treat_percent.c ft_treat_c.c ft_treat_id.c ft_treat_p.c ft_treat_s.c ft_treat_u.c ft_treat_x.c \

OBJS= ft_printf.o utils1display.o utils2.o utils3.o utils4.o ft_flags_init.o ft_treat_percent.o ft_treat_c.o ft_treat_id.o ft_treat_p.o ft_treat_s.o ft_treat_u.o ft_treat_x.o \

RM	= rm -f

all: $(NAME)

$(NAME): $(OBJS) ft_printf.h
	@gcc -Wall -Wextra -Werror -c $(SRCS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME) 

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re: fclean all
