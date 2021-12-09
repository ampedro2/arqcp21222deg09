.section .data
    .global ptr1
    .global ptr2
.section .text
    .global str_copy_porto
    str_copy_porto:
        movq ptr1(%rip), %rdx
        movq ptr2(%rip), %rax
	str_loop:
		movb (%rdx), %cl
		movb %cl, (%rax)
		cmpb $0, %cl
		je end
		cmpb $118, %cl
		je bfind
		incq %rdx
		incq %rax
		jmp str_loop

	bfind:
		movb $98, (%rax)
		incq %rdx
		incq %rax
		jmp str_loop

	end:
		ret
