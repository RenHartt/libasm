; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_atoi_base.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/22 01:44:46 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/23 19:15:58 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	ft_atoi_base

extern ft_strlen;

section	.text

ft_atoi_base:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 256
    test    rdi, rdi
    jz      .ret_cleanup
    test    rsi, rsi
    jz      .ret_cleanup

.init_check_size:
	push	rdi
    mov     rdi, rsi
    call    ft_strlen
	pop		rdi
    mov     rdx, rax
    xor     rax, rax
    cmp     rdx, 2
    jl      .ret_cleanup

.init_boolean_tab:
    mov     rcx, 0
.set_boolean_tab:
    cmp     rcx, 256
    je      .init_check_base
    mov     qword [rsp + rcx], 0
    add		rcx, 8
    jmp     .set_boolean_tab

.init_check_base:
    mov     rcx, rdx
	mov		r8, rsi
	jmp		.check_base
.inc_check_base:
    cmp		byte [r8], 0
    jz      .ret_cleanup
    inc     r8
    dec     rcx
.check_base:
	movzx   r9, byte [r8]
	cmp     r9, 0x2B
	je      .ret_cleanup
	cmp     r9, 0x2D
	je      .ret_cleanup
	cmp     r9, 0x20
	je      .ret_cleanup
	sub     r9, 0x09
	cmp     r9, 0x04
	jbe     .ret_cleanup
    cmp     byte [rsp + r9], 1
    je      .ret_cleanup
    mov     byte [rsp + r9], 1
	test    rcx, rcx
    jz      .space_loop
    jmp     .inc_check_base

.inc_space_loop:
    inc     rdi
.space_loop:
    cmp     byte [rdi], 0x20
    je      .inc_space_loop
    cmp     byte [rdi], 0x09
    jl      .ret_cleanup
    cmp     byte [rdi], 0x0D
    jg      .init_sign_loop
    jmp     .inc_space_loop

.init_sign_loop:
	mov		rcx, 1
	jmp		.sign_loop
.inc_sign_loop:
	inc		rdi
.sign_loop:
    cmp     byte [rdi], 0x2B
	je		.inc_sign_loop
    cmp     byte [rdi], 0x2D
    je      .handle_minus
    jmp     .init_find_char_in_base

.handle_minus:
	imul	rcx, -1
	jmp		.inc_sign_loop

.init_find_char_in_base:
	mov		r8, rsi
	jmp		.find_char_in_base
.inc_find_char_in_base:
	inc		r8
.find_char_in_base:
	cmp		byte [r8], 0
	jz		.ret_cleanup
	mov		r10b, byte [r8]
	cmp		byte [rdi], r10b
	je		.convert_char
	jmp		.inc_find_char_in_base

.convert_char:
	sub		r8, rsi
	imul	rax, rdx
	add		rax, r8
	inc		rdi
	jmp		.init_find_char_in_base

.ret_cleanup:
    add     rsp, 256
    pop     rbp
	imul	rax, rcx
    ret
