.section .data
.section .text
	.global sum_n
	sum_n:
		movq $0, %rax
		n_loop:
			cmpl $0, %edi
			jle end
			
			addl %edi, %eax
			decl %edi
			jmp n_loop
		
		end:
			ret
