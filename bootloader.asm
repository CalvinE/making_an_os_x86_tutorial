; jmp -> https://www.felixcloutier.com/x86/jmp
; jmp $ specifically is an infinite loop jumping back to the current place in code.
jmp $

; times -> https://nasm.us/doc/nasmdoc3.html#section-3.2.5
; $ and $$ -> https://nasm.us/doc/nasmdoc3.html#section-3.5
; The times command is not assembly, its a NASM pseudo instruction 
; to perform an action a set number of times.
; Here the boot loader has to be 512 bytes, so we buffer the file with zeros.
times 510-($-$$) db 0

; db -> https://nasm.us/doc/nasmdoc3.html#section-3.2.1
; These specific bytes placed at the end of the boot loader flag
; it as a boot loader. It must end with 0x55aa
db 0x55, 0xaa