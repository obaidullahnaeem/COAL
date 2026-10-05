.data
first:  .half 100
second : .byte 15
third :  .word 750
fourth: .byte 5

.text
.globl main
main:

    # Load address
    la $t0, first

    # load words 
    lh $t1 , 0($t0)       #  100
    lb $t2 , 2($t0)       # 15
    lw $t3 , 3($t0)    # 750
    lb $t4, 7($t0)   #  5


    #print int 
    
    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    # close program
    
    li $v0, 10
    syscall