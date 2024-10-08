; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: baptistegoron <baptistegoron@42angouleme.  +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2024/09/16 15:34:28 by baptistegoron     #+#    #+#              ;
;    Updated: 2024/09/23 14:40:01 by bgoron           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	ft_strcmp

section	.text

ft_strcmp:
	jmp		.loop
.incr:
	inc		rdi
	inc		rsi
.loop:
	movzx	eax, byte [rdi]
	test	eax, eax
	je		.return
	cmp		al, byte [rsi]
	je		.incr
.return:
	sub		al, byte [rsi]
	movsx	rax, al
	ret
