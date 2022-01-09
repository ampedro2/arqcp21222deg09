.section .data
.section .text
	.global call_proc
	call_proc:	
		pushq %rbp					#prologue
		movq %rsp, %rbp
		subq $32, %rsp
		
		movl $1, -8(%rbp)   #x1
		movl $2, -16(%rbp)	#x2
		movw $3, -24(%rbp)	#x3
		movb $4, -32(%rbp)	#x4
		
		movl -8(%rbp), %edi
		leaq -8(%rbp), %rsi
		movl -16(%rbp), %edx
		leaq -16(%rbp), %rcx 
		movw -24(%rbp), %r8w
		leaq -24(%rbp), %r9
		leaq -32(%rbp), %rax
		pushq %rax
		pushq -32(%rbp)
		
		call proc
		
		movl -8(%rbp), %ecx
		addl %ecx, -16(%rbp)
		movsbw -32(%rbp), %ax
		subw %ax, -24(%rbp)
		movswl -24(%rbp), %eax
		imull -16(%rbp)
		
		movq %rbp, %rsp
		popq %rbp					#epilogue
		ret
	
	.global proc
	proc:
		
		pushq %rdx
		addl %edi, %edx
		movl %edx, (%rsi)
		
		popq %rdx
		
		pushq %rdx
		subl %edi, %edx
		movl %edx, (%rcx)
		
		popq %rdx
		
		addw %dx, %r8w
		movw %r8w, (%r9)
		
		movsbw 16(%rbp), %ax #4
		imulw $2, %ax
		movb %al, 24(%rbp)
		ret
