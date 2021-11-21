.section .data
	.equ A, 2
	.equ B, 2
	res:
		.int 0
	varA:
		.int
	varI:
		.int
	.global n, i, res
	
.section .text
    .global loop_sum
    loop_sum:
        movl i(%rip), %ecx
        movl $A, %eax
        movl $B, %esi
        imull %eax, %eax
        movl $0, %edi
        loop:
            movl $A, %eax
            imull %eax, %eax
            movl %ecx, varI(%rip)
            imull %ecx, %ecx
            imull %ecx, %eax
            movl $0, %edx
            divl %esi
            addl %eax, %edi
            movl varI(%rip), %ecx
            incl %ecx
            cmpl n(%rip), %ecx
            jle loop
        movl %edi, %eax
        ret
