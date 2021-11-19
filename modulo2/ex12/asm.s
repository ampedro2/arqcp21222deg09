.section .data
	.global A, B
.section .text
    .global isMultiple
    isMultiple:
		movl $0, %edx
		movl A(%rip), %eax
		movl B(%rip), %ecx

		divl %ecx
		
		cmpl $0, %edx
		je is_multiple
		movq $0, %rax
		jmp end
		
	is_multiple:
		movq $1, %rax
		
	end:
		ret
