.section .data
    .global ptr1
.section .text
    .global encrypt
    encrypt:
        movq ptr1(%rip), %rdx
        movq $0, %rcx
	alt_loop:
		movb (%rdx), %al
		cmpb $0, %al
		je end
		
		cmpb $' ', %al
		je found
		cmpb $'a', %al
		je found
		
		addb $2, %al
		movb %al, (%rdx)
		incl %ecx
		incq %rdx
		
		jmp alt_loop
		
	found:
		incq %rdx
		jmp alt_loop
	end:
		movl %ecx, %eax
		ret
