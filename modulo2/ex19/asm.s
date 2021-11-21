.section .data
	.global current, desired
	
.section .text
    .global needed_time
    needed_time:
        movswl current(%rip), %eax
        movswl desired(%rip), %ecx
        subl %ecx, %eax
        cmpl $0, %eax
        jl negative
        jg positive
        positive:
            imull $3, %eax
            jmp end
        negative:
            imull $-2, %eax
        end:
            imull $60, %eax
            ret
