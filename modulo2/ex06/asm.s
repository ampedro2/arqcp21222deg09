.section .data
    .global byte1
    .global byte2
.section .text
    .global concatBytes
    concatBytes:
        movb byte2(%rip), %ah
        movb byte1(%rip), %al
        ret
