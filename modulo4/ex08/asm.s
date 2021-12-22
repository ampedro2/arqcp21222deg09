.section .data
.section .text
	.global calc
	calc:
		movq $0, %rax
		movl (%rsi), %r9d
		subl %edi, (%rsi)
		movl (%rsi), %r8d
		imull %edx, %r8d
		subl $2, %r8d
		movl %r8d, %eax
		movl %r9d, (%rsi)
		ret
