/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_read.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/18 19:29:36 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/18 19:47:48 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <fcntl.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

ssize_t read(int fd, void *buf, size_t count);

int main(void)
{
	int fd = open("test.txt", O_RDONLY);
	char *buffer = malloc(1);

	ssize_t size = read(fd, buffer, 1);
	printf("Char readed : %s\n", buffer);
	printf("Errno : %s\n", strerror(errno));

	return (0);
}
