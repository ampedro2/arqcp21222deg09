.section .data
.section .text
	.global activate_2bits
	activate_2bits:	
		
		movl $1, %edx
		movl $1, %r9d
		
		movl (%rdi), %r8d
		
		movb %sil, %cl
		shll %cl, %edx
		
		movb %cl, %al
		movb $31, %cl
		subb %al, %cl
		shll %cl, %r9d
		
		orl %edx, (%rdi)
		orl %r9d, (%rdi)
		
		ret
