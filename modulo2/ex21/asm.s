.section .data
	.global code
	.global currentSalary
	
.section .text

    .global new_salary
    
    new_salary:
		movl code(%rip), %edx
		movl currentSalary(%rip), %eax

		cmpl $10, %edx
		je manager
		
		cmpl $11, %edx
		je engineer
		
		cmpl $12, %edx
		je technician
		
		jmp employee
		
		manager:
			addl $300, %eax
			jmp end

		engineer:
			addl $250, %eax
			jmp end
		
		technician:
			addl $150, %eax
			jmp end
		
		employee:
			addl $100, %eax
			jmp end
			
			
		end:
			ret
