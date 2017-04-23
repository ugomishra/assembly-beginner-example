section .data
	msg DB 'Eat Shit!',10
	msgLen equ $-msg
section .bss
section .text
	global _start

_start:
	nop; 
	mov edx, msgLen;
	mov ecx, msg;
	mov ebx, 1;
	mov eax, 4;

	int 80h;

	mov eax, 1;
	mov ebx, 0;

	int 80h;
