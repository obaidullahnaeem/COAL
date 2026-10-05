.data
number : .word 40
small : .byte 6


.text
main:

la $t0 , number 
lw $t1 , 0($t0)

addiu $t1, $t1 , 25

la $t5 , number 
sw $t1 , 0($t5)

lb $t6 , 4($t0)  ## load small in t6 


#  PRINT  BOTH
li $v0 , 1 
move $a0 , $t1 
syscall

li $v0 , 1 
move $a0 , $t6
syscall



li $v0, 10 
syscall