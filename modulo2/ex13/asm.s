.section .data
	.global base, height
.section .text
    .global getArea
    getArea:
		movl $0, %edx
		movl base(%rip), %eax
		movl height(%rip), %ecx

		imull %ecx
		
		movl $0, %edx
		movl $2, %ecx
		idivl %ecx

		ret
