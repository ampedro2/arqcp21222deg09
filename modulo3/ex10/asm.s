.section .data
    .global ptr1
	.global ptr2
	.global ptr3
.section .text
    .global str_cat
    str_cat:
        movq ptr1(%rip), %rsi
        movq ptr2(%rip), %rdx
		movq ptr3(%rip), %rax
	str_loop1:
		movb (%rsi), %cl
		movb %cl, (%rax)
		cmpb $0, %cl
		je concat
		incq %rsi
		incq %rax
		jmp str_loop1
		
	concat:
		movb (%rdx), %cl
		movb %cl, (%rax)
		cmpb $0, %cl
		je end
		incq %rdx
		incq %rax
		jmp concat
	end:
		ret
