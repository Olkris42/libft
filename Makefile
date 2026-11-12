NAME 	= libft.a
HEADER 	= libft.h
SRC 	= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c
OBJ 	= $(SRC:.c=.o)

CFLAGS 	= -Wall -Wextra -Werror -g -Wpointer-arith
ARFLAGS = -rcs

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	-rm $(OBJ)

fclean: clean
	-rm $(NAME)

re: fclean all

.PHONY: all clean fclean re
