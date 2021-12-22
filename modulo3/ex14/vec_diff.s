.section .data
    .global ptrvec
	.global num
	.global x
.section .text
    .global vec_diff
    vec_diff:
		movl num(%rip), %ecx
		movq ptrvec(%rip), %rdx
		movq $0, %rax
        movq $0, %rsi
		short_loop:
			cmpl $0, %ecx
			je end
            movw (%rdx), %r8w
            movw %r8w, x(%rip)
            pushq %rdx
            pushq %rcx
            call exists
            popq %rcx
            popq %rdx
            cmpl $0, %eax
            je found
            addq $2, %rdx
			decl %ecx
			jmp short_loop
        
        found:
            incl %esi
            addq $2, %rdx
			decl %ecx
			jmp short_loop
        
        end:
            movl %esi, %eax
            ret
			
        
