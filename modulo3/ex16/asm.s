.section .data
    .global ptr1
	.global ptr2
	.global num
.section .text
    .global swap
    swap:
		movl num(%rip), %eax
		movq ptr1(%rip), %rcx
		movq ptr2(%rip), %rdx
		loop_strings:
			cmpl $0, %eax
			je end
			movb (%rcx), %r8b
			movb (%rdx), %r9b
			movb %r8b, (%rdx)
			movb %r9b, (%rcx)
			decl %eax
			incq %rcx
			incq %rdx
			jmp loop_strings

		end:
			ret