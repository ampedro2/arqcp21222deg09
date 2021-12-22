.section .data
.section .text
	.global inc_and_square
	inc_and_square:
		incl (%rdi)
		movl %esi, %eax
		imull %esi
		ret
