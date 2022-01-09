.section .data
.section .text
	.global activate_bits
	activate_bits:	
		movl $31, %ecx 		#move o numero de vezes que vamos correr o ciclo para rcx
		movq $1, %r8 		#a máscara que iremos usar
		
	loop_pos:
		cmpl $0, %ecx
		jl end
		
		cmpl %esi, %ecx
		jg activate 		#caso esteja dentro do intervalo 
		cmpl %edx, %ecx
		jl activate			#caso esteja dentro do intervalo
		
		decl %ecx
		jmp loop_pos
		
	activate:
		shll %cl, %r8d		#mete o bit 1 na posicao que queremos ativar
		orl %r8d, %edi		#ativa o bit correspondente no numero
		movq $1, %r8
		decl %ecx
		jmp loop_pos
	
	end:
		movl %edi, %eax 
		ret
