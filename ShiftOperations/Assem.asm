; extern "C" int IntegerShift_(unsigned int a, unsigned int count,
; unsigned int* a_shl, unsigned int* a_shr)
 

 ; Returns 0 = error, (count >= 32), 1 = success

 .code 

 IntegerShift_ proc 

 xor eax, eax ; set return code in case of error
 cmp edx, 31  ; compare count against 31
 ja InvalidCount ; jump if cout > 31
 xchg ecx, edx  ; exchange contents of ecx and edx
 mov eax, edx  ; eax = a
 shl eax, cl ; eax = a << count
 mov [r8], eax ; save result
 shr edx, cl ; edx = a >> count
 mov [r9], edx ; save result
 mov eax, 1 ; set return success code

 InvalidCount:
 ret  ; return to caller
 IntegerShift_ endp 
 end 


