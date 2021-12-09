.section .data
    .global ptrvec
	.global num
.section .text
    .global vec_add_one
    vec_add_one:
        movq ptrvec(%rip), %rdx
		movl num(%rip), %ecx
	inc_loop:
		cmpl $0, %ecx
		je end
		addq $1, (%rdx)
		decl %ecx
		addq $8, %rdx
		jmp inc_loop
	end:
		ret
