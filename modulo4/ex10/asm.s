.section .data
.section .text
	.global call_incr
	call_incr:
		movq $0, %rcx
		movq $0, %rsi
		
		pushq %rbp					#prologue
		movq %rsp, %rbp
		subq $24, %rsp
		
		movw $0xA1B2, -8(%rbp)
		leaq -8(%rbp), %rdi
		movb $0xC3, %sil  
		call incr
		movswl -8(%rbp), %ecx
		addl %ecx, %eax
		
		movq %rbp, %rsp
		popq %rbp					#epilogue
		ret
	
	incr:
		movswl (%rdi), %r10d
		movl %r10d, -16(%rbp)
		
		movsbl %sil, %r11d 
		addl -16(%rbp), %r11d
		movl %r11d, -24(%rbp)
		
		movl -24(%rbp), %r8d
		movw %r8w, (%rdi)
		
		movq -16(%rbp), %rax
		ret
