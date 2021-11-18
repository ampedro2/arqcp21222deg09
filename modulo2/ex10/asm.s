.section .data
	.global op1, op2
.section .text
    .global sum2ints
    sum2ints:
		movq $0, %rdx
		movslq op1(%rip), %rax
		movslq op2(%rip), %rcx
		addq %rcx, %rax
		ret
