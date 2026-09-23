.data 
num: .byte 25 
num1: .word 35 

.text 
.global main :
main:

la $t0, num   ## put address 
lb $t1, 0($t0)  ## store value 25

la $t2, num1  
lw $t3, 0($t2) ## store value 35

add $t5 , $t1,$t3

li $v0, 10
syscall


