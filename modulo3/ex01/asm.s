.section .data
	.global ptr1
.section .text
	.global zero_count
	zero_count:
		movq ptr1(%rip), %rdx
		movl $0, %eax
		str_loop:
			movb (%rdx), %cl
			cmpb $0, %cl
			je end
			cmpb $48, %cl
			je inc_count
			incq %rdx
			jmp str_loop
		
		inc_count:
			incl %eax
			incq %rdx
			jmp str_loop
		
		end:
			ret
