; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: bgoron <bgoron@42angouleme.fr>             +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/18 16:25:38 by bgoron            #+#    #+#              ;
;    Updated: 2024/09/19 11:14:21 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern __errno_location

section	.text
global	ft_write

ft_write:
	mov		rax, 1
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
