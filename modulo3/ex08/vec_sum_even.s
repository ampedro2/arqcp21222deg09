.section .data
    .global ptrvec
	.global num
	.global even
.section .text
.global vec_sum_even
	vec_sum_even:
		movl num(%rip), %ecx
		movq ptrvec(%rip), %rdx
		movl $0, %esi
	vec_loop:
		cmpl $0, %ecx
		je end
		
		movslq (%rdx), %rdi
		movq %rdi, even(%rip)
		pushq %rdx
		pushq %rcx
		call test_even
		popq %rcx
		popq %rdx
		cmpl $0, %eax
		je next
		
		addl (%rdx), %esi
		addq $4, %rdx
<<<<<<< HEAD
		jmp end
		
	next:
		addq $4, %rdx
		jmp vec_loop
	end:
=======
		decl %ecx
		jmp vec_loop
		
	next:
		addq $4, %rdx
		decl %ecx
		jmp vec_loop
	end:
		movl %esi, %eax
>>>>>>> 9d27d0ae0c1e928fef723a310bb11dbf13b99856
		ret
