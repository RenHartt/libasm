; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/17 14:51:50 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/23 14:40:09 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	ft_strcpy

section	.text

ft_strcpy:
	mov		rax, rdi
	jmp		.loop
.inc:
	inc		rdi
	inc		rsi
.loop:
	movzx	ecx, byte [rsi]
	mov		byte [rdi], cl
	test	cl, cl
	je		.return
	jmp		.inc
.return:
	ret
	
