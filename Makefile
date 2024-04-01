# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lpin <lpin@student.42.malaga.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/10 11:22:27 by lpin              #+#    #+#              #
#    Updated: 2024/03/26 19:59:44 by lpin             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_printf.c ft_printf_utils.c
OBJS = $(SRCS:.c=.o)

NAME = libftprintf.a

RM = rm -f

HEADER = ft_printf.h

%o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $(SRCS)

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	ar rcs $(NAME) $(OBJS)

#ar [opciones] [nombre_archivo_biblioteca] [archivos_objeto]
#ar: crea, modifica y extrae archivos de biblioteca
#r: reemplaza el archivo de la biblioteca si ya existe
#c: crea la biblioteca si no existe
#s: crea un índice de símbolos en la biblioteca

.PHONY: clean fclean re #bonus
#.PHONY: indica que clean, fclean y re no son archivos
#que se van a crear, sino que son acciones

clean:
	$(RM) $(OBJS) //borra los archivos .o

fclean: clean
	$(RM) $(NAME) //borra el archivo .a y los .o

re: fclean all 
#re: Genera un rebuild del objetivo