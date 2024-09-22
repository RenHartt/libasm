/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_strcmp.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baptistegoron <baptistegoron@42angouleme.  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/13 16:00:58 by baptistegoron     #+#    #+#             */
/*   Updated: 2024/09/17 15:31:12 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	ft_strcmp(const char *str1, const char *str2);

int main(void)
{
	char *str1 = "A";
	char *str2 = "B";

	printf("%d\n", ft_strcmp(str1, str2));

	return (0);
}
