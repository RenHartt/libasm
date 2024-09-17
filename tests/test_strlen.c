/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_strlen.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baptistegoron <baptistegoron@42angouleme.  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/13 16:00:58 by baptistegoron     #+#    #+#             */
/*   Updated: 2024/09/16 14:59:12 by baptistegoron    ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <stdio.h>
#include <unistd.h>

int	ft_strlen(const char *str);

int main(void)
{
	char *str = "Hello, world";

	printf("%d\n", ft_strlen(str));

	return (0);
}
