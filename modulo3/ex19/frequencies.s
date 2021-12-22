.section .data
    .global ptrgrades
    .global ptrfreq
    .global num

.section .text 
    .global frequencies

frequencies:
	
    movq ptrfreq(%rip), %rax
	movq ptrgrades(%rip), %rdx
	movw num(%rip), %cx

ciclo:
	cmpw $0, %cx
	je fim

	movsbq (%rdx), %rsi
	pushq %rax
	imulq $4, %rsi
	addq %rsi, %rax
	incl (%rax)
	popq %rax

	incq %rdx
	decw %cx
	jmp ciclo

fim:
    ret 