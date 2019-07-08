.data
list: 
   .space 200

.text
main:
   addi $t3, $zero, 100
   addi $t4, $zero, 1
   la $a1, list
loop1:
   add $t0, $t0, $t4  #increments loop index $t0 by 1
   bne $t0, 200, loop1 #loops 200 times
loop2:
   sub $t0, $t0, $t4 #decremenets loop index $t0 by 1
   bne $t0, 50, loop2 #loops 150 times

   slt $t5, $t3, $t0 # t5 = 100 < 50 = 0
   sw $t5, 0($a1)
   beq $t5, $t4, end # false 
   slt $t5, $t0, $t3 # t5 = 50 < 100 = 1
   sw $t5, 4($a1)
   beq $t5, $t4, operatorTests #true 

operatorTests:
   and $t6, $t5, $t4 # t6 = t5 && t4 = 1 && 1 = true
   sw $t6, 8($a1)
   and $t7, $0, $t4  #t7 = 0 && t4 = 0 && 1 = false
   sw $t7, 12($a1)
   and $t7, $0, $0
   sw $t7, 16($a1)

   or $t6, $t5, $0 # 1 || 0 = 1
   sw $t6, 20($a1)
   or $t6, $0, $0 # 0 || 0 = 0
   sw $t6, 24($a1)
   or $t6, $t5, $t4 # 1 || 1
   sw $t6, 28($a1)

   xor $t6, $t5, $0  # 1 xor 0 = 1
   sw $t6, 32($a1)
   xor $t6, $0, $0   # 0 xor 0 = 0
   sw $t6, 36($a1)
   xor $t6, $t5, $t4 # 1 xor 1 = 0
   sw $t6, 40($a1)
   xor $t6, $0, $t5  # 0 xor 1 = 1 
   sw $t6, 44($a1)
end:
