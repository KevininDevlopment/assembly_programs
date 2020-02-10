

;extern "C" int IntegerAddSub_(int a, int b, int c, int d);

.code 

IntegerAddSub_ proc 

mov eax, ecx  ; eax = a
add eax, edx  ; eax = a + b
add eax, r9d  ; eax = a + b + c

sub eax, r10d  ; eax = a + b + c - d

ret  ; return result to caller

IntegerAddSub_ endp
end 

