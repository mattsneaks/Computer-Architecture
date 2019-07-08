# output: $t3 will contain 3

		addi $t3, $zero, 0
		addi $t2, $zero, 3
loop:
		beq $t2, $t3, end
		addi $t3, $t3, 1
		j loop
end:
