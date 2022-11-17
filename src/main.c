/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anshimiy <anshimiy@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/17 15:26:01 by anshimiy          #+#    #+#             */
/*   Updated: 2022/11/17 15:57:39 by anshimiy         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/minishell.h"

void	prompting(t_shell *shell)
{
	while (shell->shell_status == RUNNING)
	{
		//shell->prompt = readline("\033[0;36m\033[1m$minishell ▸ \033[0m");
		//add_history(shell->prompt);
		//parsing(shell);
	}
}

int	main(int argc, char *argv[], char *envp[])
{
	//t_shell	shell;
    (void) argc;
    (void) argv;
    (void) envp;
	if (argc == 1)
	{
		//if (!init_shell(&shell, argv, envp))
			return (false);
		//prompting(&shell);
	}
	return (0);
}