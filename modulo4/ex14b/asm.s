.section .data
.section .text
	.global activate_bit
	activate_bit:	
		
		movl $1, %edx
		
		movl (%rdi), %r8d
		
		movb %sil, %cl
		shll %cl, %edx
		
		orl %edx, (%rdi)
		movl (%rdi), %ecx
		
		cmpl %ecx, %r8d
		je not_changed
		
		movl $1, %eax
		jmp end
		
		
	not_changed:
		movl $0, %eax
	
	end:
		ret
