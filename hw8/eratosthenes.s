.global	_Z12eratosthenesPjj

_Z12eratosthenesPjj:
	push	{r2, r3, r4, r5, r6, r7, r8, r9, r10}
	mov	r2, #2
	mov	r3, #3
	mov	r5, r1
	add	r5, #63
	lsr	r5, #6
	mov	r6, #9
	mov	r7, r5
	mov	r8, r0
	mov	r9, #0xffffffff
	mov	r10, #1

.primeset:
	str	r9, [r8]
	add	r8, #4
	subs	r7, #1
	bne	.primeset
	mov	r4, r1

.squareroot:
        cmp     r7, r4
        bgt     .setval
        add     r10, #1
        mov     r5, r7
        mul     r7, r10, r10
        cmp     r5, r4
        beq     .setval
        bal     .squareroot

.setval:
	mov	r5, #1
	mov	r8, r0
	sub	r9, r6, #1
	lsr	r9, #1
	lsr	r4, r9, #5
	lsl	r4, #2
	add	r8, r4
	and	r7, r9, #31
	lsl	r5, r7
	cmp	r6, r3
	beq	.primecheck

.remove:
	ldr	r9, [r8]
	bic	r9, r5
	str	r9, [r8]
	add	r6, r3
	add	r6, r3
	cmp	r6, r1
	bmi	.setval

.nextprime:
	add	r3, #2
	cmp	r3, r1
	bgt	.complete
	mov	r6, r3
	bal	.setval

.primecheck:
	ldr	r9, [r8]
	tst	r5, r9
	beq	.nextprime
	add	r2, #1
	cmp	r3, r10
	bgt	.nextprime
	mul	r6, r3, r3
	bal	.setval

.complete:
	mov	r0, r2
	pop	{r2, r3, r4, r5, r6, r7, r8, r9, r10}
	bx	lr
