.section .data
.section .text
	.global greatest
	greatest:
		cmpl %edi, %esi
		jg esi_g1
		
		jmp edi_g1
		
		esi_g1:
			cmpl %esi, %edx
			jg ret_edx
			
			jmp ret_esi
		edi_g1:
			cmpl %edi, %edx
			jg ret_edx
			
			jmp ret_edi
		
		ret_edx:
			movl %edx, %eax
			jmp end
		ret_esi:
			movl %esi, %eax
			jmp end
		ret_edi:
			movl %edi, %eax
			jmp end
		end:
			ret
