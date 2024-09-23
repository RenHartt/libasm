; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/18 19:30:34 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/23 14:39:53 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	ft_read

extern __errno_location

section	.text

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
