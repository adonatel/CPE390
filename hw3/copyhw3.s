.globl _Z5counti
_Z5counti:
	ldr r1,#0
	bx .Lcu
	bx lr
.Lcu:
	add r1,#1
	cmp r1,10
	ble .Lcu



	.globl _Z9countDowni
_Z9countDowni:
	bx .Lcd
	bx lr
.Lcd:
	sub r0,#1
	cmp r0,#1
	bge .Lcd



	.globl _Z3sumii
_Z3sumii:
	ldr r2,#0
	bx .Lsum
	bx lr
.Lsum:
	add r2,r0
	add r0,#1
	cmp r0,r1
	ble .Lsum



	.globl _Z4facti
_Z4facti:
	ldr r1,#1
	bx .Lfact
	bx lr
.Lfact:
	mul r1,r0
	sub r0,#1
	cmp r0,#1
	bge .Lfact

