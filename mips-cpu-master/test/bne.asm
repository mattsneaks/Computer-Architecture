# output: 1 will be stored in $t3 if the branch is taken correctly
addi $t1, $zero, 5
addi $t2, $zero, 4
bne $t1, $t2, equal
hlt: j hlt
equal: 
addi $t3, $zero, 1