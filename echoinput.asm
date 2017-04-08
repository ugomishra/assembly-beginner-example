;x86
section .data
    outQ DB "Enter a character", 10
    outQL equ $ - outQ
    outA DB "You entered: ",10
    outAL equ $ - outA

section .bss
    num resb 5;

section .text
    global _start

_start:
    ;Print the question
    mov edx, outQL
    mov ecx, outQ
    mov ebx, 1
    mov eax, 4

    int 0x80

    ;take input
    mov edx, 5
    mov ecx, num
    mov ebx, 2
    mov eax, 3

    int 0x80

    ;print input Ans
    mov edx, outAL
    mov ecx, outA
    mov ebx, 1
    mov eax, 4

    int 0x80

    ;print input
    mov edx, 5
    mov ecx, num
    mov ebx, 1
    mov eax, 4

    int 0x80

    mov ebx, 0
    mov	eax, 1
    int 0x80

