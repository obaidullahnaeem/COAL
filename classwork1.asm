.data
#num: .word 0x12345678
#num1: .word 0xabcdef

ch: .byte 'A' , 'B' , 'C' ,'D'

.text 
.globl main 
main: 

#la $s1, num  ## s1 make effective address 
#lw t1 ,4($s1) ## pick the next word in t1 

#addiu $t2,$t1, 100

#sw t2, 12()


#la $s1 , num ## address generated 
#lb $t1, 0($s1)   #1 byte
#lw $t2 , ($S1)

#li $v0, 4

#syscall 

la $s1, ch

lb $t1, 0($s1)
lb $t2, 1($s1)
lb $t3, 2($s1)
lb $t4, 3($s1)


li $v0, 10 
syscall
## t1 destinatons register 