# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anshimiy <anshimiy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/17 15:45:40 by anshimiy          #+#    #+#              #
#    Updated: 2022/11/17 16:16:36 by anshimiy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = minishell

# Hide calls
export VERBOSE	=	FALSE
ifeq ($(VERBOSE),TRUE)
	HIDE =
else
	HIDE = @
endif

SRCDIR = src/

SRCS =  src/main.c			\

CC = gcc
CFLAGS = -Wall -Wextra -Werror -pthread
RM = rm -rf

# .o files in bin
OBJDIR	=	bin/
OBJS	=	$(patsubst $(SRCDIR)%.c,$(OBJDIR)%.o,$(SRCS))

all: $(NAME)
	# @echo "$(COLOR)	             xxxxx"
	# @echo "                  xXXXXXXXXXx"
	# @echo "                 XXXXXXXXXXXXX"
	# @echo "                xXXXXXXXX  XXXx"
	# @echo "                XXXXXXXXX 0XXXX___"
	# @echo "               xXXXXXXXXXxxXXXX____\\   $(TALK) MINISHELL COMPILED$(CEND)$(COLOR)	"
	# @echo "               XXXXXXXXXXXXXXXX____/"
	# @echo "               XXXXXXXXXXXXXXXXX"
	# @echo "               XXXXX|\XXX/|XXXXX"
	# @echo "               XXXXX| \-/ |XXXXX"
	# @echo "              xXXXXX| [ ] |XXXXXx"
	# @echo "            xXXXX   | /-\ |   XXXXx"
	# @echo "         xXXXXX     |/   \|     XXXXXx"
	# @echo "       xXXXXXX                   XXXXXXx"
	# @echo "      xXXXXXXX                   XXXXXXXx"
	# @echo "     xXXXXXXXX                   XXXXXXXXx"
	# @echo "    xXXXXXXXXX                   XXXXXXXXXx"
	# @echo "   xXXXXXXXXXX                   XXXXXXXXXXx"
	# @echo "  xXXXXXXXXXXX                   XXXXXXXXXXXx"
	# @echo " xXXXXXXXX XXX                   XXX XXXXXXXXx"
	# @echo " XXXXXXXX  XXX                   XXX  XXXXXXXX"
	# @echo "xXXXXXXX   XXX                   XXX   XXXXXXXx"
	# @echo "XXXXXX     XXX                   XXX     XXXXXX"
	# @echo "XXXX       XXX                   XXX       XXXX"
	# @echo " XX        XXX                   XXX        XX"
	# @echo "           XXX                   XXX"
	# @echo "           XXX                   XXX"
	# @echo "           XXX                   XXX"
	# @echo "           XXX                   XXX"
	# @echo "           XXXx                 xXXX"
	# @echo "           XXXXXXXXXXXXXXXXXXXXXXXXX"
	# @echo "           XXXXXXX           XXXXXXX"
	# @echo "       ____XXXXXX             XXXXXX____"
	# @echo "      /________/               \________\\ $(CEND)"

$(NAME):	$(OBJS)
	$(HIDE) make -C ./includes/my_lib
	$(HIDE) $(CC) $(CFLAGS) $(OBJS) -o $(NAME) ./includes/my_lib/mylib.a
	@echo "$(GREEN)$(NAME) compiled!$(DEFAULT)"

# Compiles sources into objects
$(OBJS): $(OBJDIR)%.o : $(SRCDIR)%.c| $(OBJDIR)
	$(HIDE) $(CC) $(CFLAGS) -c $< -o $@

# Creates directory for binaries
$(OBJDIR):
	$(HIDE) mkdir -p $@

clean: 
	$(HIDE) $(MAKE) -C ./includes/my_lib clean
	$(HIDE) $(RM) $(OBJS)
	@echo "$(YELLOW)$(NAME) cleaned!$(DEFAULT)"
fclean: clean
	$(HIDE) $(MAKE) -C ./includes/my_lib fclean
	$(HIDE) $(RM) $(NAME)

re: fclean all

git:
	@git add .
	@read -p "Insert the commit message: " TAG && git commit -m "$$TAG"
	@git push
	@echo "\n$(PURPLE)$(NAME) committed sucessfully$(DEFAULT)"
	@echo "$(PURPLE)$(CBOLD) .      .      .      .      .      .      .      .      .      .      ."
	@echo ".                               .       .       .       .       .       ."
	@echo "   .        .        .        .        .        .        .        .        ."
	@echo "     .         .         .        _......____._        .         ."
	@echo "   .          .          . ..--'"" .           """"""---...          ."
	@echo "                   _...--""        ................       `-.              ."
	@echo "                .-'        ...:'::::;:::%:.::::::_;;:...     `-."
	@echo "             .-'       ..::::'''''   _...---'"""":::+;_::.      `.      ."
	@echo "  .        .' .    ..::::'      _.-""               :::)::.       `."
	@echo "         .      ..;:::'     _.-'         .             f::'::    o  _"
	@echo "        /     .:::%'  .  .-"                        .-.  ::;;:.   /" "x"
	@echo "  .   .'  ""::.::'    .-"     _.--'"""-.           (   )  ::.::  |_.-' |"
	@echo "     .'    ::;:'    .'     .-" .d@@b.   \    .    . `-'   ::%::   \_ _/    ."
	@echo "    .'    :,::'    /   . _'    8@@$(YELLOW)$(NAME) is entering the git world$(CEND)$(PURPLE)$(CBOLD)@@8   j      .-'       :::::      " o"
	@echo "    | .  :.%:' .  j     (_)    `@@@P'  .'   .-"         ::.::    .  f"
	@echo "    |    ::::     (        -..____...-'  .-"          .::::'       /"
	@echo ".   |    `:`::    `.                ..--'        .  .::'::   .    /"
	@echo "    j     `:::::    `-._____...---""             .::%:::'       .'  ."
	@echo "     \      ::.:%..             .       .    ...:,::::'       .'"
	@echo " .    \       `:::`:..                ....::::.::::'       .-'          ."
	@echo "       \    .   ``:::%::`::.......:::::%::.::::''       .-'"
	@echo "      . `.        . ``::::::%::::.::;;:::::'''      _.-'          ."
	@echo "  .       `-..     .    .   ````'''''         . _.-'     .          ."
	@echo "         .    ""--...____    .   ______......--' .         .         ."
	@echo "  .        .        .    """"""""     .        .        .        .        ."
	@echo " .       .       .       .       .       .       .       .       ."
	@echo "     .      .      .      .      .      .      .      .      .      .      .$(CEND)"

RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m
PURPLE = \033[1;35m

CEND      = \033[0m
CBOLD     = \033[1m
CYELLOW = \033[33m
TALK = $(CBOLD) $(CYELLOW)

.PHONY: all clean fclean re 