; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/18 19:30:34 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/18 19:36:36 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern __errno_location

section	.text
global	ft_read

ft_read:
	mov		rax, 0
	syscall
	cmp		rax, 0
	jl		.fail
	ret
.fail:
	neg		rax
	mov		rdi, rax
	call	__errno_location
	mov		[rax], rdi
	mov		rax, -1
	ret
