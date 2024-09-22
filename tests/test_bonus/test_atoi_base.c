/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_atoi_base.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/21 16:28:58 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/22 19:38:00 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>
#include <string.h>

int ft_atoi_base(const char *str, const char *base);

int main(void)
{
	char *input = NULL, *base = NULL;

	while (1)
	{
		input = readline("Entrez un nombre : ");
		if (strcmp(input, "exit") == 0) { break; }

		base = readline("Entrez une base : ");
		if (strcmp(base, "exit") == 0) { break; }

		printf("Résultat de ft_atoi_base : %d\n", ft_atoi_base(input, base));

		free(input);
		input = NULL;
		free(base);
		base = NULL;
	}

	free(input);
	free(base);

	return (0);
}
