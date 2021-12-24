  AREA nibble, CODE, READONLY
  ENTRY
main
    ldr r0, number        ; the address is loaded to r0
	ldr r1, [r0]           ; now the value is loaded to r1 
	mov r2, #0x0000000f     ; moving the value #f to r2 resister
	and r3, r2, r1          ; now we are, using AND operation to take n0 bit
	mov r4, #0x000f0000      ; now we are, moving the value #f0000
	and r5, r4, r1          ; now we are, using AND operation to take n4 bit
	mov r6, r5, lsr #16      ; then shifted the n4 to n0 location 
	add r8, r3, r6           ; add both the numbers 
	ldr r7, result          ; the address is loaded to r7
	str r8,[r7]               ; result is stored in result
number dcd &40000004
result dcd &4000000c
	end