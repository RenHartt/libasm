NAME = libasm.a

MANDATORY_SRCS = $(wildcard srcs/mandatory/*.s)
MANDATORY_OBJS_DIR = srcs/mandatory/.objs
MANDATORY_OBJS = $(MANDATORY_SRCS:srcs/mandatory/%.s=$(MANDATORY_OBJS_DIR)/%.o)

BONUS_SRCS = $(wildcard srcs/bonus/*.s)
BONUS_OBJS_DIR = srcs/bonus/.objs
BONUS_OBJS = $(BONUS_SRCS:srcs/bonus/%.s=$(BONUS_OBJS_DIR)/%.o)

NASM = nasm
NASMFLAGS = -f elf64
AR = ar rcs
RANLIB = ranlib

all: $(MANDATORY_OBJS) $(NAME)

$(NAME): $(MANDATORY_OBJS)
	$(AR) $(NAME) $(MANDATORY_OBJS)
	$(RANLIB) $(NAME)

$(MANDATORY_OBJS_DIR)/%.o: srcs/mandatory/%.s | $(MANDATORY_OBJS_DIR)
	$(NASM) $(NASMFLAGS) $< -o $@

$(MANDATORY_OBJS_DIR):
	mkdir -p $(MANDATORY_OBJS_DIR)

$(BONUS_OBJS_DIR)/%.o: srcs/bonus/%.s | $(BONUS_OBJS_DIR)
	$(NASM) $(NASMFLAGS) $< -o $@

$(BONUS_OBJS_DIR):
	mkdir -p $(BONUS_OBJS_DIR)

bonus: $(MANDATORY_OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(MANDATORY_OBJS) $(BONUS_OBJS)
	$(RANLIB) $(NAME)

clean:
	rm -rf $(MANDATORY_OBJS_DIR) $(BONUS_OBJS_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.SILENT:
.PHONY: all clean fclean re bonus
