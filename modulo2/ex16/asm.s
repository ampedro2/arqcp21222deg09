.section .data
	.global num
.section .text
    .global steps
    steps:
		movq num(%rip), %rax
		movq $3, %rcx
		imulq %rcx, %rax
		addq $6, %rax
		movq $0, %rdx
		idivq %rcx
		addq $12, %rax
		subq num(%rip), %rax
		subq $1, %rax
		ret
