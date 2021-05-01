;how to execute: nasm -f bin file.asm -o boot.bin 
;qemu-system-x86_64 boot.bin
mov ah, 0x0e
mov al, 65
int 0x10

loop:  
  inc al
  cmp al, 'Z' + 1
  je exit
  int 0x10
  jmp loop 

exit:
 jmp $

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
