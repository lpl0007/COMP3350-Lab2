.globl main
main:
	# Request input
	la $a0, input
	li $v0, 4
	syscall
	
	# Read input
	li $v0, 8
	
	# Reserve space
	la $a0, pause
	li $a1, 40
	
	# Save value
	move $t0, $a0
	syscall
	
	# Return output
	la $a0, output
	li $v0, 4
	syscall
	
	# Reserve space
	la $a0, pause
	move $a0, $t0
	
	# Return output pt.2
	li $v0, 4
	syscall
	
	# End
	li $v0, 10
	syscall

.data
input:.asciiz "\nEnter less than 40 characters: "
pause:.space 40
output:.asciiz "\nCharacters provided: "
