.section .data
.section .text
	.global test_equal
	test_equal:
		str_loop:
			movb (%rdi), %cl
			movb (%rsi), %dl
			cmpb $0, %cl
			je cl_acabou
			cmpb $0, %dl
			je dl_acabou
			cmpb %cl, %dl
			jne not_equals
			incq %rdi
			incq %rsi
			jmp str_loop
		
		equals:
			movq $1, %rax
			ret
		
		not_equals:
			movq $0, %rax
			ret
			
		cl_acabou:
			cmpb $0, %dl
			je equals
			jmp not_equals
			
		dl_acabou:
			cmpb $0, %cl
			je equals
			jmp not_equals
			
