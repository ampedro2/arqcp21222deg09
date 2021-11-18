.section .data
	.global op1, op2
.section .text
    .global test_flags
    test_flags:
		movl op1(%rip), %eax
		movl op2(%rip), %ecx
		addl %eax, %ecx
		jc carry_detected
		jo carry_detected
		movq $0, %rax
		jmp end
	carry_detected:
		movq $1, %rax
	end:
		ret
