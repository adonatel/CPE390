	.globl _Z5counti
_Z5counti:
	mov r1,#0
	cmp r0,#1
	bge .Lcu
.Lcu:
	add r1,#1
	cmp r1,r0
	bl .Lcu
	bx lr



	.globl _Z9countDowni
_Z9countDowni:
	cmp r0,#1
	bge .Lcd
.Lcd:
	sub r0,#1
	cmp r0,#1
	bge .Lcd
	bx lr


	.globl _Z3sumii
_Z3sumii:
	mov r2,#0
	cmp r0,r1
	bl .Lsum
.Lsum:
	add r2,r0
	add r0,#1
	cmp r0,r1
	ble .Lsum
	bx lr



	.globl _Z4facti
_Z4facti:
	mov r1,#1
	cmp r0,#1
	bge .Lfact
.Lfact:
	mul r1,r0
	sub r0,#1
	cmp r0,#1
	bge .Lfact
	bx lr
