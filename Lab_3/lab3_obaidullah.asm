.data 

num1 : .word 120
num2 : .half 35
num3 : .byte 8


.text
main:

#     ADDRESS LOADED 
la $t0 , num1 
la $t1 , num2
la $t2 , num3

# LOAD INT 
lw $t5 , 0($t0)
lh $t6 , 4($t1)
lb $t7 , 6($t2)

# PRINT 
li $v0 , 1 
move $a0, $t5
syscall

li $v0 , 1 
move $a0, $t6
syscall

li $v0 , 1 
move $a0, $t7
syscall

li $v0 , 10
syscall
