.section .data
    .global even
.section .text
    .global test_even
    test_even:
        movq $0, %rdx
        movq $2, %rcx
        movq even(%rip), %rax
        divq %rcx
        cmpq $0, %rdx
        je even
        movq $0, %rax
        jmp end
    even:
       movq $1, %rax
	end:
		ret
	
