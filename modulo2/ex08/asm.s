.section .data
    s2:
		.short 0
    s1:
		.short 0
	.global s2
	.global s1
.section .text
    .global crossSumBytes
	crossSumBytes:
		movw s1(%rip), %ax;
		movw s2(%rip), %cx;
		addb %ch, %al;
		addb %cl, %ah;
		ret
