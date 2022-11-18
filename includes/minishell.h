/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minishell.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexnshimiyimana <alexnshimiyimana@stud    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/17 15:26:12 by anshimiy          #+#    #+#             */
/*   Updated: 2022/11/17 23:37:34 by alexnshimiy      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINISHELL_H
# define MINISHELL_H

/* ****** INCLUDES ****** */

# include "my_lib/mylib.h"
# include <ctype.h>
# include <fcntl.h>
# include <readline/readline.h>
# include <readline/history.h>
# include <stdbool.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>

# define DBQUOTE 34
# define SQUOTE 39
# define PIPE 124
# define SPACE 32
# define DOLLAR 36
# define DOUBLEPIPE 123
# define DOUBLEAMPERSAND 125
// # define CTRLC 135 or 3?

typedef enum e_shell_status {
    RUNNING,
    OVER,
} t_shell_status;

/* ****** STRUCTS ****** */

typedef struct s_env
{
	char			*cmd;
	char			*expand;
	struct s_env	*next;

}					t_env;

typedef struct s_shell
{
	char			*prompt;
	char			**argv;
	t_shell_status	shell_status;
	int				size;
	int				nb_cmd;
	char			**envp;
	t_env			*env;

}					t_shell;

/* ****************************** FUNCTIONS ****************************** */

/* ******   MINISHELL   ****** */

/* ******    PARSING    ****** */

/* ******     INIT      ****** */

/* ******     UTILS     ****** */

/* ******      ENV      ****** */

/* ******     LOGS      ****** */

/* ******   EXECUTION   ****** */


#endif