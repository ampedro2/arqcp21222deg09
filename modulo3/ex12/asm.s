.section .data
    .global ptrvec
	.global num
.section .text
    .global vec_zero
    vec_zero:
		movl num(%rip), %ecx
		movq ptrvec(%rip), %rdx
		movq $0, %rax
		short_loop:
			cmpl $0, %ecx
			je end
			movw (%rdx), %r8w
			cmpw $100, %r8w
			jge found
			addq $2, %rdx
			decl %ecx
			jmp short_loop

		found:
			incb %al
			movw $0, (%rdx)
			addq $2, %rdx
			decl %ecx
			jmp short_loop
		end:
			ret
        
