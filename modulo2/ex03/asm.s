.section .data
	.global op1
	.global op2
	.equ CONST, 15
.section .text
	.global sum # void sum(void)
	sum:
		movl op1(%rip), %ecx #place op1 in ecx
		movl op2(%rip), %eax #place op2 in eax
		addl %ecx, %eax #add ecx to eax. Result is in eax
		ret
	.global sum_v2
	sum_v2:
		movl op1(%rip), %ecx #place op1 in ecx
		movl CONST(%rip), %edx
		subl %edx, %ecx
		movl op2(%rip), %eax #place op2 in eax
		subl %edx, %eax
		subl %ecx, %eax
		ret
	

