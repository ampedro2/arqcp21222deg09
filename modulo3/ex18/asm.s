.section .data
    .global ptrsrc
	.global ptrdest
	.global num
.section .text
    .global sort_without_reps
    sort_without_reps:
		movq $0, %rax
		movl num(%rip), %ecx
		movl %ecx, %edi
		movq ptrsrc(%rip), %rdx
		movq ptrdest(%rip), %rsi
		movl $1001, %r8d
		movb $0, %r12b
		decl %ecx
		movl $-10, %r9d
		main_loop:
			cmpl $0, %ecx
			jle end
			movl num(%rip), %edi
			movq ptrsrc(%rip), %rdx
			movl $1001, %r8d
			sec_loop:
				cmpl $0, %edi
				je continue_loop
				cmpl %r8d, (%rdx)
				jl minimum
				jmp not_new_minimum
				minimum:
					movl (%rdx), %r11d
					cmpl %r9d, (%rdx)
					jl not_new_minimum
					cmpl %r9d, (%rdx)
					je dec_num
					movl (%rdx), %r8d
					jmp not_new_minimum
					dec_num:
						decl %ecx
				not_new_minimum:
					addq $4, %rdx
					decl %edi
					jmp sec_loop
			continue_loop:
				incl %eax
				movl %r8d, (%rsi)
				movl %r8d, %r9d
				addq $4, %rsi
				decl %ecx
				movb $1, %r12b
				jmp main_loop



		end:
			ret