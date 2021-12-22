.section .data
    .global ptrvec
    .global num 
    .comm ptrvec ,8

.section .text 
    .global vec_greater20 #int

vec_greater20:
    movq ptrvec(%rip), %rdi 
    movl num(%rip), %ecx 
    movq $0, %rax

loop:
    cmpl $0, %ecx
    je end
    cmpq $20, (%rdi)
    jg isgreater
    decl %ecx
    addq $8, %rdi 
    jmp loop

isgreater:
	incq %rax
	decl %ecx
    addq $8, %rdi
	jmp loop
	
end:
    ret 

    
