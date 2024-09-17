/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_strlen.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baptistegoron <baptistegoron@42angouleme.  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/13 16:00:58 by baptistegoron     #+#    #+#             */
/*   Updated: 2024/09/17 14:42:38 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

int	ft_strlen(const char *str);

int main(void)
{
	char *str = "";

	printf("%d\n", ft_strlen(str));

	return (0);
}
