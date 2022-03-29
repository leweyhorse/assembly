; hello.asm
section .data
  msg db  "hello, world",0
section .bss

section .text
  global main
main:
  mov rax,1
  mov rdi,1
  mov rsi,msg
  mov rdx,12
  syscall

  mov rax,60    ;exit
  mov rdi,0     ;return 0
  syscall