; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/17 14:51:50 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/17 16:39:51 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
global	ft_strcpy

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
	
