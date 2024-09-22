; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_atoi.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/21 16:50:24 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/22 01:42:47 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
global	ft_atoi

ft_atoi:
	test	rdi, rdi
	jz		.ret
	xor		rax, rax
	mov		rcx, 1
	jmp		.spaceloop
.inc_and_spaceloop:
	inc		rdi
.spaceloop:
	cmp		byte [rdi], 0x20
	je		.inc_and_spaceloop
	cmp		byte [rdi], 0x09
	jl		.ret
	cmp		byte [rdi], 0x0D
	jg		.check_sign
	jmp		.inc_and_spaceloop
.check_sign:
	cmp		byte [rdi], 0x2B
	je		.handle_plus
	cmp		byte [rdi], 0x2D
	je		.handle_minus
	jmp		.digitloop
.handle_plus:
	mov		rcx, 1
	inc		rdi
	jmp		.digitloop
.handle_minus:
	mov		rcx, -1
	inc		rdi
.digitloop:
	cmp		byte [rdi], 0x30
	jl		.ret
	cmp		byte [rdi], 0x39
	jg		.ret
	movzx   rdx, byte [rdi]
    sub     rdx, 0x30
    imul    rax, 10
    add     rax, rdx 
	inc		rdi
	jmp		.digitloop	
.ret:
	imul	rax, rcx
	ret
