; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_list_size.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/23 13:45:43 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/23 18:43:18 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
global	ft_list_size

ft_list_size:
	xor		rax, rax
.loop:
	cmp		rdi, 0
	jz		.ret
	inc		rax
	mov		rdi, [rdi + 8]
	jmp		.loop
.ret:
	ret
