; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/17 16:31:42 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/18 15:23:31 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern	ft_strlen
extern	ft_strcpy
extern	malloc

section	.text
global	ft_strdup

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
