.section .data
.section .text
	.global greater_date
	greater_date:	
		movl $0b00000000111111111111111100000000, %ecx
		movl $0b11111111000000000000000000000000, %edx
		movl $0b00000000000000000000000011111111, %r8d
		
		pushq %rdi
		pushq %rsi
		
		andl %ecx, %edi
		andl %ecx, %esi
		
		cmpl %edi, %esi
		jl date1
		cmpl %edi, %esi
		jg date2
		
		popq %rsi
		popq %rdi
		
		pushq %rdi
		pushq %rsi
		
		andl %edx, %edi
		andl %edx, %esi
		cmpl %edi, %esi
		jl date1
		cmpl %edi, %esi
		jg date2
		
		popq %rsi
		popq %rdi
		
		pushq %rdi
		pushq %rsi
		
		andl %r8d, %edi
		andl %r8d, %esi
		
		cmpl %edi, %esi
		jl date1
		cmpl %edi, %esi
		jg date2
	
	date1:
		popq %rsi
		popq %rdi
		movl %edi, %eax
		jmp end
	
	date2:
		popq %rsi
		popq %rdi
		movl %esi, %eax
		jmp end
	
	end:
		ret
