.section .data
    .global ptr1
    .global ptr2
.section .text
    .global str_copy_porto2
    str_copy_porto2:
        movq ptr1(%rip), %rdx
        movq ptr2(%rip), %rax
	str_loop:
		movb (%rdx), %cl
		movb %cl, (%rax)
		cmpb $0, %cl
		je end
		cmpb $118, %cl
		je bfind
		cmpb $86, %cl
		je bfind
		incq %rdx
		incq %rax
		jmp str_loop

	bfind:
		subb $20, (%rax)
		incq %rdx
		incq %rax
		jmp str_loop

	end:
		ret
