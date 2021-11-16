.section .data
	.global op1
	.global op2
	op3:
		.long 0
	op4:
		.long 0
	.global op3
	.global op4
.section .text
	.global sum_v3
	sum_v3:
		movslq op1(%rip), %rdx
		movslq op2(%rip), %rcx
		movslq op3(%rip), %rbx
		movslq op4(%rip), %rax
		addq %rbx, %rax
		subq %rcx, %rax
		addq %rdx, %rax
		ret
