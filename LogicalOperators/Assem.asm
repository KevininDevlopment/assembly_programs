

; extern C unsigned int InterLogical_(unsigned int a, unsigned int b, unsigned int c, 
; unsigned int d);

extern g_Vall:dword   ; external doubleword 32 bit value

.code

InterLogical_ proc

; Calculate (((a + b) | c) ^ d ) + g_Vall

and ecx, edx  ; ecx = a & b
or ecx, r8d   ; ecx = (a & b) | c
xor ecx, r9d  ; ecx = ((a & b) | c) ^ d
add ecx, [g_Vall]  ; ecx = ((a & b) | c) ^ d + g_Vall
mov eax, ecx  ; eax = final result
ret  ; reutrn to caller

InterLogical_ endp
end 




