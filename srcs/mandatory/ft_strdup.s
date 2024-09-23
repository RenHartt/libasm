; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/17 16:31:42 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/23 14:39:43 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	ft_strdup

extern	ft_strlen
extern	ft_strcpy
extern	malloc

section	.text

ft_strdup:
	push	rdi
	call	ft_strlen
	inc		rax
	mov		rdi, rax
	call	malloc
	test	rax, rax
	je		.fail
	mov		rdi, rax
	pop		rsi
	call	ft_strcpy
.fail:
	ret
