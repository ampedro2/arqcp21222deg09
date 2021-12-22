.section .data
    .global ptrvec
	.global num
	.global x
.section .text
    .global exists
    exists:
		movl num(%rip), %ecx
		movq ptrvec(%rip), %rdx
		movq $0, %rax
		short_loop:
			cmpl $0, %ecx
			je verify
			movw (%rdx), %r8w
			cmpw x(%rip), %r8w
			je found
			addq $2, %rdx
			decl %ecx
			jmp short_loop

		found:
			incl %eax
			addq $2, %rdx
			decl %ecx
			jmp short_loop

		verify:
			cmpl $1, %eax
			jg greather
			movl $0, %eax
			jmp end

		greather:
			movl $1, %eax

		end:
			ret
        
