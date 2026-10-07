.data
values: .byte 5, 10, 15, 20, 25 
result: .byte 0                

.text
.globl main
main:
    la $t0, values #load address

   
    lb $t1, 1($t0)      # index 1 = 10
    lb $t2, 4($t0)      # index 4 = 25
    
    add $t3, $t1, $t2   #t3=35

    sb $t3, result # for byte use sb savebyte 
    lb $t4, result # load byte 

    li $v0, 1           #print int
    move $a0, $t4
    syscall

    li $v0, 10
    syscall