.section .data
.section .text
	.global count_even
	count_even:
		movq $0, %rax
		short_loop:
			cmpl $0, %esi
			je end
			pushq %rax
			movq $0, %rdx
			movw $2, %cx
			movw (%rdi), %ax 
			divw %cx
			popq %rax
			cmpw $0, %dx
			je inc_even
			addq $2, %rdi
			decl %esi
			jmp short_loop
		
		inc_even:
			incl %eax
			addq $2, %rdi
			decl %esi
			jmp short_loop 
			
		end:
			ret
