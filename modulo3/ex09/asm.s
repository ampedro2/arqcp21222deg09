.section .data
	.global num
	.global x
	.global ptrvec
	.comm ptrvec ,2 # declare pointer (2 bytes)

.section .text
	.global vec_search # short* vec_search()

vec_search:
	movq ptrvec(%rip), %rax
	
	movq num(%rip) , %rcx
	
	movw x(%rip), %dx
	
	
ciclo:
	
	cmpq $0, %rcx
	je fim
	
	cmp (%rax),%dx
	je found

	addq $2, %rax

	loop ciclo
	
found:
	ret

fim :
	mov $0, %rax
	ret
