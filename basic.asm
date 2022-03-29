; a basic assembly file

section .data
  msg db "Hello World!!",10,0 ;10 is nl, 0 terminates string

section .bss

section .text
  GLOBAL _start       ;using _start for ld linker
                      ;use main for gcc linking
_start:

  mov rax, 1          ;write
  mov rdi, 1          ;to screen
  mov rsi, msg        ;string to display
  mov rdi, 13         ;length of string
  syscall

  mov rax, 60         ;exit
  mov rdx, 0          ;return 0
  syscall

;compile: nasm -f elf64 -o hello.o hello.asm
;link: ld hello.o -o hello
