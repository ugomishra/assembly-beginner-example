;character replacer x86

section .data
    orgstr DB 'Replace e with a'
    orgstrL equ $-orgstr

section .text
    global _start

_start:
    mov edx, orgstr
    mov ecx, orgstrL
    jmp loopstart

    mov edx, orgstrL
    mov ecx, orgstr
    mov ebx, 1
    mov eax, 4

    int 0x80

    mov eax,1
    int 0x80

loopstart:
   cmp byte edx[ecx], 00
   je  istrue
   dec ecx
   jnz loopstart


istrue:
   mov byte [edx+ecx-1], 'a'


