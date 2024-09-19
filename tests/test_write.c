/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_write.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/18 17:44:39 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/18 21:13:09 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

ssize_t ft_write(int fd, const void *buf, size_t count);

int main(void)
{
	ssize_t size;

	printf ("My write :\n");

	size = ft_write(-1, "hello", 1);
	printf("Input : size = ft_write(-1, \"hello\", 1);\n");
	printf("Return : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));
	
	printf("\n");

	size = ft_write(1, NULL, 1);
	printf("Input : size = ft_write(1, NULL, 1);\n");
	printf("Return : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));
	
	printf("\n");
	
	size = ft_write(1, "hello", -1);
	printf("Input : size = ft_write(1, \"hello\", -1);\n");
	printf("Return : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));

	printf ("\nClassic write :\n");

	size = write(-1, "hello", 1);
	printf("Input : size = write(-1, \"hello\", 1);\n");
	printf("Return : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));
	
	printf("\n");

	size = write(1, NULL, 1);
	printf("Input : size = write(1, NULL, 1);\n");
	printf("Return : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));
	
	printf("\n");
	
	size = write(1, "hello", -1);
	printf("Input : size = write(1, \"hello\", -1);\n");
	printf("Return : %zd\n", size);
	printf("Errno : %s\n", strerror(errno));

	return (0);
}
