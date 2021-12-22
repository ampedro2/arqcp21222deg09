.section .data
.section .text
	.global sum_smaller
	sum_smaller:
		pushq %rsi
		addl %edi, %esi
		movl %esi, %eax
		popq %rsi
		cmpl %edi, %esi
		jl esi_l
		
		jmp edi_l
		
		esi_l:
			movl %esi, (%rdx)
			jmp end
		edi_l:
			movl %edi, (%rdx)
			jmp end
		
		end: 
			ret
