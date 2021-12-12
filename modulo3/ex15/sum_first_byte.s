.section .data
    .global ptrvec
    .global num 
    .comm ptrvec ,1

.section .text 
    .global sum_first_byte #

sum_first_byte:
    movq ptrvec(%rip), %rdx 
    movl num(%rip), %ecx
    movl $0, %eax

loop:
    cmpl $0 , %ecx
    je end
    movl (%rdx), %edi
    movsbl %dil, %r8d
	addl %r8d, %eax
    decl %ecx
    addq $4, %rdx
    jmp loop
	
end:
    ret 

    
