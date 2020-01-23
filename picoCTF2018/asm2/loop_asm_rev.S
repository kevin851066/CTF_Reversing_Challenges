; What does asm2(0xe,0x21) return? 
; Submit the flag as a hexadecimal value (starting with '0x'). 
; NOTE: Your submission for this question will NOT be in the normal flag format. 
; Source located in the directory at /problems/assembly-2_3_c3ee3603bd2a8e682f1d64cf6dfd21fb.

.intel_syntax noprefix
.bits 32
	
.global asm2

asm2:
	push   	ebp
	mov    	ebp,esp
	sub    	esp,0x10
	mov    	eax,DWORD PTR [ebp+0xc]
	mov 	DWORD PTR [ebp-0x4],eax
	mov    	eax,DWORD PTR [ebp+0x8]
	mov	DWORD PTR [ebp-0x8],eax
	jmp    	part_b
part_a:	
	add    	DWORD PTR [ebp-0x4],0x1
	add	DWORD PTR [ebp+0x8],0x41
part_b:	
	cmp    	DWORD PTR [ebp+0x8],0x9886
	jle    	part_a
	mov    	eax,DWORD PTR [ebp-0x4]
	mov	esp,ebp
	pop	ebp
	ret


