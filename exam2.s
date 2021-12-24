	AREA arrt, CODE, READONLY
  ENTRY
main
	   mov r0, #00000004 ; move the number of element in the array
	   ldr r1, array   ;loading the array address to the r1
loop   cmp r0, #0      ; compare it with r0 i.e count value
	   beq stop        ; this will end the loop
	   sub r0, r0, #1    ; the count is keep on decrementing
	     ldr r3, [r1, #4]! ;taking the value from the address  
	   cmp r3, #0         ; comparing the value with zero 
	   bpl counts        ; if it is positive then it will add
	   bmi result         ; if it is negative then it will not add
counts  add r2, r2, r3     ; the r2 value and r3 value is added
result  ldr r5, count     ; the address is stored in r5
       STR r2,[r5]	       ; the sum will be repetedly stored in the r2 
	   b loop
	   
stop  b stop                ; this is if the lopp will end 
array dcd &40000000         
count  dcd &40000000
	end