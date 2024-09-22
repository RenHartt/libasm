/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_atoi.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/21 16:28:58 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/22 01:08:06 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>
#include <string.h>

int ft_atoi(const char *str);

int main(void)
{
	while (1)
	{
		char *input = readline("Entrez un nombre : ");
		
		if (strcmp(input, "exit") == 0)
		{
			free(input);
			break;
		}

		printf("Résultat de ft_atoi : %d\n", ft_atoi(input));
		printf("Résultat de atoi    : %d\n", atoi(input));

		free(input);
	}

	return (0);
}
