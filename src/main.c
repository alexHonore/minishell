/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexnshimiyimana <alexnshimiyimana@stud    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/17 15:26:01 by anshimiy          #+#    #+#             */
/*   Updated: 2022/11/17 23:50:37 by alexnshimiy      ###   ########.fr       */
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
	char* input;

	// Configure readline to auto-complete paths when the tab key is hit.
        rl_bind_key('\t', rl_complete);
    
	
	while (1)
	{
		// Display prompt and read input
            input = readline("minishell> ");
			printf("%s\n", input);
		// Check for EOF.
            if (!input)
                break;
	}
	
	if (argc == 1)
	{
		
		//if (!init_shell(&shell, argv, envp))
			//return (false);
		//prompting(&shell);
	}
	return (0);
}