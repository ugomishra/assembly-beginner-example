section .data
	msgln equ 10

section .bss
	inpstr resb 8

section .text

	GLOBAL _start

_start: 
	mov ebx, 0;
	mov eax, 3;
	mov ecx, inpstr;
	mov edx, 10

	int 80h;

	upcase: sub byte [inpstr + edx], 20h;
			inc ecx;
			dec edx;
			jnz upcase; 

	mov ebx, 1;
	mov eax, 4;
	mov ecx, inpstr;
	mov edx, 10;

	int 80h;

	mov ebx, 0;
	mov eax, 1;

	int 80h;