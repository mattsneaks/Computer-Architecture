# output: register $t3 should contain the value -4 (FFFF FFFC in two's complement)
addi $t1, $zero, 1
addi $t2, $zero, 5
sub $t3, $t1, $t2