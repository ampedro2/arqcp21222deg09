.section .data
    .global ptrvec
	.global num
.section .text
    .global vec_sum
    vec_sum:
        movq ptrvec(%rip), %rdx
		movswq num(%rip), %rcx
		movq $0, %rax
	inc_loop:
		cmpq $0, %rcx
		je end 
		movl (%rdx), %esi
		addl %esi, %eax
		addq $4, %rdx
		decq %rcx
		jmp inc_loop
	end:
		ret
	
