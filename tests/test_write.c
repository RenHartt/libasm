/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_write.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/18 17:44:39 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/18 18:36:07 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <errno.h>
#include <stdio.h>
#include <string.h>

ssize_t ft_write(int fd, const void *buf, size_t count);

int main(void)
{
	ssize_t size = ft_write(1, NULL, 1);
	
	printf("Number of char printed : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));

	return (0);
}
