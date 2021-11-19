.section .data
	.global A, B, C, D
.section .text
    .global compute
    compute:
		movl A(%rip), %eax
		movl B(%rip), %ecx
		movl C(%rip), %edx
		movl D(%rip), %esi

		imull %ecx, %eax
		addl %edx, %eax

		movl $0, %edx
		idivl %esi

		ret
