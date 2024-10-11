.globl main
main:
	# Load variables into temp variables
	lw $t0, a
	lw $t1, b
	lw $t2, c
	lw $t7, z
	
	# If a > b
	bgt $t0, $t1 path1
	
	# If c < 5
	blt $t2, 5, path1
	
	# If not (a > b || c < 5) since ((a > b) && ((c + 1) == 7)) can never be reached
	b path2
	
	# If (a > b || c < 5)
	path1:
		li $t7, 1
		j end
	# If not (a > b || c < 5)
	path2:
		li $t7, 3
	end:
	
	# Save end value into z
	sw $t7, z
	
	# Switch cases
	beq $t7, -1, exit
	beq $t7, -2, exit
	beq $t7, 0, exit
	exit:
	
.data
a: .word 10
b: .word 15
c: .word 6
z: .word 0
