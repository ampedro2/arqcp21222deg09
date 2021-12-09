.section .data
    .global num

.section .text
    .global steps

    steps:
        # a)
        movq num(%rip), %rax
        imulq $3, %rax

        # b)
        addq $6, %rax
        cdq

        # c)
        cqo
        movq $3, %rcx
        idivq %rcx

        # d)
        addq $12, %rax

        # e)
        subq num(%rip), %rax

        # f)
        subq $1, %rax
    ret
