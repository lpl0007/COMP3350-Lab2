.globl main
main:
	# Load variable into temp variables
	lw $t0, a
	lw $t1, b
	lw $t2, c
	lw $t3, d
	lw $t4, e
	lw $t5, f
	lw $t7, z
	
	# Add all temp variables
	add $t7, $t0, $t1
	add $t7, $t7, $t2
	add $t7, $t7, $t3
	add $t7, $t7, $t4
	add $t7, $t7, $t5
	
	# Save the final value into z
	sw $t7, z

.data
a: .word 15
b: .word 10
c: .word 7
d: .word 2
e: .word 18
f: .word -3
z: .word 0
