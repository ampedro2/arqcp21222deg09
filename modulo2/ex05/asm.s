.section .data
	.global s
	aux:
		.byte 0
.section .text
	.global swapBytes
	swapBytes:
		movw s(%rip), %ax
		movb %ah, aux(%rip)
		movb %al, %ah
		movb aux(%rip), %al
		ret
