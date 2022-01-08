.section .data
	sum:
		.int 0
	
	product:
		.int 1
.section .text
	.global calculate
	calculate:
		movq $0, %rcx
		movq $0, %rdx
		pushq %rdi
		pushq %rsi
		addl %edi, %esi
		movl %esi, sum(%rip)
		popq %rsi
		imull %esi, %edi
		movl %edi, product(%rip)
		popq %rdi
		
		pushq %rdi
		pushq %rsi
		movq %rsi, %r9
		movq %rdi, %r8
		movq $0, %rdi
		movq $0, %rsi
		movb $'+', %dil
		movl %r8d, %esi
		movl %r9d, %edx
		movl sum(%rip), %ecx
		call print_result
		popq %rsi
		popq %rdi
		
		pushq %rdi
		pushq %rsi
		movq %rsi, %r9
		movq %rdi, %r8
		movq $0, %rdi
		movq $0, %rsi
		movb $'*', %dil
		movl %r8d, %esi
		movl %r9d, %edx
		movl product(%rip), %ecx
		call print_result
		popq %rsi
		popq %rdi
		
		pushq %rsi
		addl %edi, %esi
		movl %esi, %r8d
		popq %rsi
		imull %edi, %esi
		movl %esi, %r9d
		subl %r9d, %r8d
		movl %r8d, %eax
		ret
