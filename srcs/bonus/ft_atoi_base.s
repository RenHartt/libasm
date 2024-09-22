; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_atoi_base.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/22 01:44:46 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/22 02:38:42 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern ft_strlen;

section	.text
global	ft_atoi_base					; rdi : nptr / rsi : base / rdx : base len
										; rcx : sign / rax : return 
ft_atoi_base:							; r8 : / r9 : / r10 : / r11 : 
	test	rdi, rdi
	jz		.ret
	test	rsi, rsi
	jz		.ret
	mov		rcx, 1
	push	rdi
	mov		rdi, rsi
	call	ft_strlen
	mov		rdx, rax
	xor		rax, rax
	pop		rdi
	cmp		rdx, 2
	jl		.ret
	
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
