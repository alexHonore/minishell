# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alexnshimiyimana <alexnshimiyimana@stud    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/17 15:45:40 by anshimiy          #+#    #+#              #
#    Updated: 2022/11/17 23:49:07 by alexnshimiy      ###   ########.fr        #
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
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf
RD_INCLUDE =  -lcurses -lreadline
A_RD =  readline/libreadline.a readline/libhistory.a
H_INCLUDE = -I includes/minishell.h
A_INCLUDE = ./includes/my_lib/mylib.a
# .o files in bin
OBJDIR	=	bin/
OBJS	=	$(patsubst $(SRCDIR)%.c,$(OBJDIR)%.o,$(SRCS))

all: $(NAME)
	@echo "$(BLUE) __"
	@echo "( o>"
	@echo "///\ "
	@echo "\V_/_$(CEND)"

$(NAME):	$(OBJS)
	$(HIDE) make -C ./includes/my_lib
	$(HIDE) $(CC) $(CFLAGS) $(OBJS) $(RD_INCLUDE) -o $(NAME) $(A_INCLUDE) $(H_INCLUDE)
	@echo "$(GREEN)$(NAME) compiled!$(CEND)"

# Compiles sources into objects
$(OBJS): $(OBJDIR)%.o : $(SRCDIR)%.c| $(OBJDIR)
	$(HIDE) $(CC) $(CFLAGS) -c $< -o $@

# Creates directory for binaries
$(OBJDIR):
	$(HIDE) mkdir -p $@

clean: 
	$(HIDE) $(MAKE) -C ./includes/my_lib clean
	$(HIDE) $(RM) $(OBJS)
	@echo "$(YELLOW)$(NAME) cleaned!$(CEND)"
	@echo "$(RED)  _.,-----/=\-----,._"
	@echo " (__ ~~~.......~~~ __)"
	@echo "  | ~~~.........~~~ |"
	@echo "  | |  ; ,   , ;  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  | |  | |   | |  | |"
	@echo "  |. \_| |   | |_/ .|"
	@echo "   °-,.__ ~~~ __.,-°$(CEND)"
	
fclean: clean
	$(HIDE) $(MAKE) -C ./includes/my_lib fclean
	$(HIDE) $(RM) $(NAME)

re: fclean all

git:
	@git add .
	@read -p "Insert the commit message: " TAG && git commit -m "$$TAG"
	@git push
	@echo "$(PURPLE)$(CBOLD) .      .      .      .      .      .      .      .      .      .      ."
	@echo ".  $(PURPLE)$(NAME) is entering the git world$(CEND)$(PURPLE)$(CBOLD)  .       .       .       .    . "
	@echo "   .        .        .        .        .        .        .        .        ."
	@echo "     .         .         .        _......____._        .         ."
	@echo "   .          .          . ..--°¨¨ .           ¨¨¨¨¨¨---...          ."
	@echo "                   _...--¨¨        ................       °-.              ."
	@echo "                .-°        ...:°::::;:::%:.::::::_;;:...     °-."
	@echo "             .-°       ..::::°°°°°   _...---°¨¨¨¨:::+;_::.      °.      ."
	@echo "  .        .° .    ..::::°      _.-¨¨               :::)::.       °."
	@echo "         .      ..;:::°     _.-°         .             f::°::    o  $(GREEN)_$(CEND)$(PURPLE)$(CBOLD)"
	@echo "        /     .:::%°  .  .-¨                        $(BLUE).-.$(CEND)$(PURPLE)$(CBOLD)  ::;;:.   $(GREEN)/¨ ¨x$(CEND)$(PURPLE)$(CBOLD)"
	@echo "  .   .°  ¨¨::.::°    .-¨     _.--°¨¨¨-.           $(BLUE)(   )$(CEND)$(PURPLE)$(CBOLD)  ::.::  $(GREEN)|_.-° |$(CEND)$(PURPLE)$(CBOLD)"
	@echo "     .°    ::;:°    .°     .-¨ $(YELLOW).d@@b.$(CEND)$(PURPLE)$(CBOLD)   \    .    . $(BLUE)°-°$(CEND)$(PURPLE)$(CBOLD)   ::%::   $(GREEN)\_ _/$(CEND)$(PURPLE)$(CBOLD)    ."
	@echo "    .°    :,::°    /   . _°    $(YELLOW)8@@@@8$(CEND)$(PURPLE)$(CBOLD)   j      .-°       :::::      $(GREEN)¨$(CEND)$(PURPLE)$(CBOLD) o"
	@echo "    | .  :.%:° .  j     $(RED)(_)$(CEND)$(PURPLE)$(CBOLD)    $(YELLOW)°@@@P°$(CEND)$(PURPLE)$(CBOLD)  .°   .-¨         ::.::    .  f"
	@echo "    |    ::::     (        -..____...-°  .-¨          .::::°       /"
	@echo ".   |    °:°::    °.                ..--°        .  .::°::   .    /"
	@echo "    j     °:::::    °-._____...---¨¨             .::%:::°       .°  ."
	@echo "     \      ::.:%..             .       .    ...:,::::°       .°"
	@echo " .    \       °:::°:..                ....::::.::::°       .-°          ."
	@echo "       \    .   °°:::%::°::.......:::::%::.::::°°       .-°"
	@echo "      . °.        . °°::::::%::::.::;;:::::°°°      _.-°          ."
	@echo "  .       °-..     .    .   °°°°°°°°°         . _.-°     .          ."
	@echo "         .    ¨¨--...____    .   ______......--° .         .         ."
	@echo "  .        .        .    ¨¨¨¨¨¨¨¨     .        .        .        .        ."
	@echo " .       .       .       .       .       .       .       .       ."
	@echo "     .      .      .      .      .      .      .      .      .      .      .$(CEND)"
	@echo "\n$(YELLOW)$(NAME) committed sucessfully$(CEND)"

space:
	@echo "$(PURPLE)$(CBOLD) .      .      .      .      .      .      .      .      .      .      ."
	@echo ".  $(PURPLE)$(NAME) is entering the git world$(CEND)$(PURPLE)$(CBOLD)  .       .       .       .    . "
	@echo "   .        .        .        .        .        .        .        .        ."
	@echo "     .         .         .        _......____._        .         ."
	@echo "   .          .          . ..--°¨¨ .           ¨¨¨¨¨¨---...          ."
	@echo "                   _...--¨¨        ................       °-.              ."
	@echo "                .-°        ...:°::::;:::%:.::::::_;;:...     °-."
	@echo "             .-°       ..::::°°°°°   _...---°¨¨¨¨:::+;_::.      °.      ."
	@echo "  .        .° .    ..::::°      _.-¨¨               :::)::.       °."
	@echo "         .      ..;:::°     _.-°         .             f::°::    o  $(GREEN)_$(CEND)$(PURPLE)$(CBOLD)"
	@echo "        /     .:::%°  .  .-¨                        $(BLUE).-.$(CEND)$(PURPLE)$(CBOLD)  ::;;:.   $(GREEN)/¨ ¨x$(CEND)$(PURPLE)$(CBOLD)"
	@echo "  .   .°  ¨¨::.::°    .-¨     _.--°¨¨¨-.           $(BLUE)(   )$(CEND)$(PURPLE)$(CBOLD)  ::.::  $(GREEN)|_.-° |$(CEND)$(PURPLE)$(CBOLD)"
	@echo "     .°    ::;:°    .°     .-¨ $(YELLOW).d@@b.$(CEND)$(PURPLE)$(CBOLD)   \    .    . $(BLUE)°-°$(CEND)$(PURPLE)$(CBOLD)   ::%::   $(GREEN)\_ _/$(CEND)$(PURPLE)$(CBOLD)    ."
	@echo "    .°    :,::°    /   . _°    $(YELLOW)8@@@@8$(CEND)$(PURPLE)$(CBOLD)   j      .-°       :::::      $(GREEN)¨$(CEND)$(PURPLE)$(CBOLD) o"
	@echo "    | .  :.%:° .  j     $(RED)(_)$(CEND)$(PURPLE)$(CBOLD)    $(YELLOW)°@@@P°$(CEND)$(PURPLE)$(CBOLD)  .°   .-¨         ::.::    .  f"
	@echo "    |    ::::     (        -..____...-°  .-¨          .::::°       /"
	@echo ".   |    °:°::    °.                ..--°        .  .::°::   .    /"
	@echo "    j     °:::::    °-._____...---¨¨             .::%:::°       .°  ."
	@echo "     \      ::.:%..             .       .    ...:,::::°       .°"
	@echo " .    \       °:::°:..                ....::::.::::°       .-°          ."
	@echo "       \    .   °°:::%::°::.......:::::%::.::::°°       .-°"
	@echo "      . °.        . °°::::::%::::.::;;:::::°°°      _.-°          ."
	@echo "  .       °-..     .    .   °°°°°°°°°         . _.-°     .          ."
	@echo "         .    ¨¨--...____    .   ______......--° .         .         ."
	@echo "  .        .        .    ¨¨¨¨¨¨¨¨     .        .        .        .        ."
	@echo " .       .       .       .       .       .       .       .       ."
	@echo "     .      .      .      .      .      .      .      .      .      .      .$(CEND)"

RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
PURPLE = \033[1;35m
CYAN = \033[0;36m
CEND = \033[0m
CBOLD     = \033[1m
.PHONY: all clean fclean re 