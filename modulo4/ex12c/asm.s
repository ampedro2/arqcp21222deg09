.section .data
.section .text
	.global count_bits_zero
	.global vec_count_bits_zero
	count_bits_zero:	
		pushq %rbp					#prologue
		movq %rsp, %rbp
		subq $8, %rsp
		movl $0, -8(%rbp)
		movq $32, %rcx
		loop_bits:	
			pushq %rdi
			andl $1, %edi
			cmpl $0, %edi
			jne isn_zero
			incl -8(%rbp)
		
		isn_zero:
			popq %rdi
			sarl %edi
			loop loop_bits
		
		end:
			popq %rdi
			movl -8(%rbp), %eax
					
			movq %rbp, %rsp
			popq %rbp					#epilogue
			ret
			
	vec_count_bits_zero:
		movq $0, %r8
		movl %esi, %ecx
		
		cmpl $0, %ecx
		je end2
		
		vec_loop:
			movl (%rdi), %edx
			
			pushq %rdi
			pushq %rcx
			
			movl %edx, %edi
			call count_bits_zero
			popq %rcx
			popq %rdi
			
			addq $4, %rdi
			addl %eax, %r8d
			loop vec_loop
		
		end2:
			movl %r8d, %eax
			ret
