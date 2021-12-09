.section .data
	.global numero_atual
    soma:
        .short 0
.section .text
	.global calcula_resto
	calcula_resto:
        movw $0, soma(%rip)
		movw numero_atual(%rip), %ax
        movw $10, %cx
        jmp loop
        main_loop:
            movw soma(%rip), %ax
            movw $0, soma(%rip)
            loop:
                movw $0, %dx
                divw %cx
                addw %dx, soma(%rip)
                cmpw $0, %ax
                ja loop
            cmpw $9, soma(%rip)
            ja main_loop
            jb return_sum
            jmp return_zero
        
        return_sum:
            movw soma(%rip), %ax
            jmp end
        
        return_zero:
            movb $0, %al

        end:
		    ret
