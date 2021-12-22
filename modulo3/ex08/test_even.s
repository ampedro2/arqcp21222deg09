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
<<<<<<< HEAD
        je even
        movq $0, %rax
        jmp end
    even:
=======
        je evenFound
        movq $0, %rax
        jmp end
    evenFound:
>>>>>>> 9d27d0ae0c1e928fef723a310bb11dbf13b99856
       movq $1, %rax
	end:
		ret
	
