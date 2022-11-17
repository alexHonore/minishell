/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   commands.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anshimiy <anshimiy@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/17 17:21:33 by anshimiy          #+#    #+#             */
/*   Updated: 2022/11/17 17:37:46 by anshimiy         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/minishell.h"

void cmd_echo(char** env)
{
    // if (print message sucess)
    // {
    //     if (! -n)
    //         printf("\n");
    //     exit 0
    // }
    // else    
    //     exit >0
}

void cmd_cd(char** env)
{
    // change current directory only if relatuve or abs
}

void cmd_pwd(char** env)
{
    // print current directory path from os root (/)
}

void cmd_export(char** env)
{
    // generate or display all exported variables in child process environments without affecting other environments
}

void cmd_unset(char** env)
{
    // delete the env variables during program execution
}

void cmd_env(char** env)
{
    // print a list of the current environment variables
}

void cmd_exit(char** env)
{
    // terminal will be closed with/without status?
}