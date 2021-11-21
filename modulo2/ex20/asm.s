.section .data
	.global num
	
.section .text
    .global check_num
    check_num:
		movl num(%rip), %eax
		movl $0, %edx
		movl $2, %ecx
		idivl %ecx
		cmpl $0, %edx
		je even
		jne odd
		even:
			cmpl $0, num(%rip)
			jl even_negative
			jge even_positive
		odd:
			cmpl $0, num(%rip)
			jl odd_negative
			jg odd_positive
		
		even_negative:
			movl $1, %eax
			jmp end
			
		even_positive:
			movl $3, %eax
			jmp end
			
		odd_negative:
			movl $2, %eax
			jmp end
			
		odd_positive:
			movl $4, %eax
			jmp end
			
		end:
			ret
