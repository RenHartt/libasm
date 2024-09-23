; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: baptistegoron <baptistegoron@42angouleme.  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/13 15:40:44 by baptistegoron     #+#    #+#              ;
;    Updated: 2024/09/23 14:40:17 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	ft_strlen

section	.text

ft_strlen:
	mov		rax, rdi
.loop:
	cmp		byte [rax], 0
	je		.return
	inc		rax
	jmp		.loop
.return:
	sub		rax, rdi
	ret
