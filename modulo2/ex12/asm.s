.section .data
    .global A 
    .global B 

.section .text
    .global isMultiple

    isMultiple:
        movl A(%rip), %eax
        movl B(%rip), %ecx
        cltd
        cmpl $0, %ecx  
        je notMultiple
        idivl %ecx

        cmpl $0, %edx  
        je multiple

    notMultiple:
        movl $0, %eax
        jmp end

    multiple:
        movl $1, %eax
    end:
		ret
