.section .data
	.global A
	.global B
	.global C
	.global D
.section .text
    .global sum_and_subtract
	sum_and_subtract:
		movslq C(%rip), %rax;
		movslq D(%rip), %rsi;
		movsbq A(%rip), %rcx;
		movswq B(%rip), %rdx;
		addq %rcx, %rax;
		subq %rsi, %rax;
		addq %rdx, %rax;
		ret
