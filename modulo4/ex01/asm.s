.section .data
.section .text
	.global cube
	cube:
		movl %edi, %ecx
		imull %edi, %edi
		imull %ecx, %edi
		movl %edi, %eax
		ret
