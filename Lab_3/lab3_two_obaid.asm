.data
a : .byte 12
b : .word 500
c : .half 25
d : .byte 9

.text
main:

# load addresses
la $t1 , a
la $t2 , b 
la $t3 , c
la $t4 , d

# load words 
lw $t5 , 0($t1)
lw $t6 , 1($t1)
lw $t7 , 5($t1)
lw $t8 , 7($t1)

li $v0, 10 
syscall