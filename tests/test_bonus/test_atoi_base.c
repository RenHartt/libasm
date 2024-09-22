/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_atoi_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/21 16:28:58 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/22 01:48:01 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>
#include <string.h>

int ft_atoi_base(const char *str, const char *base);

int main(void)
{
	while (1)
	{
		char *input = readline("Entrez un nombre : ");
		char *base = readline("Entrez une base : ");
		
		if (strcmp(input, "exit") == 0)
		{
			free(input);
			free(base);
			break;
		}

		printf("Résultat de ft_atoi_base : %d\n", ft_atoi_base(input, base));

		free(input);
		free(base);
	}

	return (0);
}
