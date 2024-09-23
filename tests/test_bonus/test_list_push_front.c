/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test_list_push_front.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/23 13:53:53 by bgoron            #+#    #+#             */
/*   Updated: 2024/09/23 17:50:47 by bgoron           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "list.h"
#include <stdio.h>
#include <string.h>

void ft_list_push_front(t_list **begin_list, void *data);

void print_list(t_list *list)
{
	while (list)
	{
        printf("%s -> ", (char *)list->data);
        list = list->next;
    }
    
	printf("NULL\n");
}

int main()
{
    t_list *list = NULL;

    ft_list_push_front(&list, strdup("data"));
    ft_list_push_front(&list, strdup("data"));
    ft_list_push_front(&list, strdup("data"));
    
    print_list(list);

    return 0;
}
