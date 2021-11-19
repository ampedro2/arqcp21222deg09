.section .data
	result:
		.int 0
	.global int1, int2, result
.section .text
    .global sum
    sum:
		movl int1(%rip), %eax
		movl int2(%rip), %ecx
		addl %ecx, %eax
		movl %eax, result(%rip)
		ret
	.global subtraction
	subtraction:
		movl int1(%rip), %eax
		movl int2(%rip), %ecx
		subl %ecx, %eax
		movl %eax, result(%rip)
		ret
	.global multiplication
	multiplication:
		movl int1(%rip), %eax
		movl int2(%rip), %ecx
		imull %ecx
		movl %eax, result(%rip)
		ret
	.global division
	division:
		movl int1(%rip), %eax
		cltd
		movl int2(%rip), %ecx
		idivl %ecx
		movl %eax, result(%rip)
		ret
	.global modulus
	modulus:
		movl int1(%rip), %eax
		cmp $0, %eax
		jg end
		subl %eax, %eax
		subl int1(%rip), %eax
	end:
		movl %eax, result(%rip)
		ret
	.global power2
	power2:
		movl int1(%rip), %eax
		imull %eax
		movl %eax, result(%rip)
		ret
	.global power3
	power3:
		movl int1(%rip), %eax
		imull %eax
		imull int1(%rip), %eax
		movl %eax, result(%rip)
		ret
	
