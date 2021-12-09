.section .data
    .global ptrvec
	.global num
.section .text
.global vec_avg
	vec_avg:
		movswl num(%rip), %ecx
		pushq %rcx
		call vec_sum
		popq %rcx
		cmpq $0, %rcx
		je zero
		cltd
		idivl %ecx, %eax
		jmp end
	zero:
		movl $0, %eax
	end:
		ret