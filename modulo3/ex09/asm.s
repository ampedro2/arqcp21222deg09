.section .data
	.global num
	.global x
	.global ptrvec
	.comm ptrvec ,2 # declare pointer (2 bytes)

.section .text
	.global vec_search # short* vec_search()

vec_search:
	movq ptrvec(%rip), %rax
	
	movl num(%rip) , %ecx
	
	movw x(%rip), %dx
	
	
ciclo:
	
	cmpl $0, %ecx
	je fim
	
	cmp (%rax),%dx
	je found

	addq $2, %rax
	decl %ecx

	loop ciclo
	
found:
	ret

fim :
	movq $0, %rax
	ret
