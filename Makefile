NAME = libasm.a
SRCS := ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_strdup.s

SRCS := $(addprefix srcs/, $(SRCS))
CFLAGS = -Wall -Wextra -Werror -g
NASMFLAGS = -f elf64
OBJS_DIR = .objs
OBJS = $(addprefix $(OBJS_DIR)/, $(SRCS:.s=.o))
NASM = nasm
all: $(NAME)

$(NAME): $(OBJS)
	ar rc $@ $^

$(OBJS_DIR)/%.o: %.s
	mkdir -p $(OBJS_DIR)/srcs
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	rm -rf $(OBJS_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
.SILENT:
