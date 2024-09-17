/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_strcpy.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/17 14:42:12 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/17 15:09:05 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char *ft_strcpy(const char *dst, const char *src);

int main (void)
{
	char *src = "Hello world";
	char *dst = malloc(strlen(src) + 1);

	printf("%s\n", ft_strcpy(dst, src));
	free(dst);

	return (0);
}
