.section .data
    .global ptrvec
    .global num 
    .comm ptrvec ,4

.section .text 
    .global keep_positives #void

keep_positives:
    movq ptrvec(%rip), %rdx 
    movl num(%rip), %ecx
    movl $0, %eax
    
loop:
    cmpl %eax , %ecx
    je end
    cmpl $0, (%rdx)
    jl negative
    incl %eax
    addq $4, %rdx 
    jmp loop
    
negative:
	movl %eax, (%rdx)
	incl %eax
    addq $4, %rdx
	jmp loop
	
end:
    ret 

    
