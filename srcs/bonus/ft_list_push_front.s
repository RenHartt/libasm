; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_list_push_front.s                               :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/23 13:55:00 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/23 17:52:41 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global ft_list_push_front

extern malloc

section .text
ft_list_push_front:
	push	rsp
	push	rdi
	push	rsi
	xor		rax, rax
	mov		rdi, 16
	call	malloc
	pop		rsi
	pop		rdi
	cmp		rax, 0
	jz		.ret
	mov		[rax], rsi
	mov		rcx, [rdi]
	mov		[rax + 8], rcx
	mov		[rdi], rax
.ret:
	pop		rsp
	ret
