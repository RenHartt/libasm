/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_strdup.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/18 13:03:11 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/18 13:05:35 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

char *ft_strdup(const char *src);

int main(void)
{
	char *src = "Hello, world";
	char *dup = ft_strdup(src);

	printf("%s\n", dup);
	free(dup);

	return (0);
}
