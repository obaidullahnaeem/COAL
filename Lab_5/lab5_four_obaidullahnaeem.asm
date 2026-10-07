.data
numbers: .word 25, 50, 75, 100   
result:  .word 0                

.text
.globl main
main:
    la $t0, numbers
    lw $t1, 0($t0)      # index 0 = 25
    lw $t2, 4($t0)      # index 1 = 50
    lw $t3, 8($t0)      # index 2 = 75
    lw $t4, 12($t0)     # index 3 = 100

    add $t5, $t2, $t4   # t5=150

    sub $t5, $t5, $t1   # $t5=  150-25 = 125

    sw $t5, result #save word

    lw $t6, result #load word for printing

    li $v0, 1           #print int
    move $a0, $t6
    syscall
    
    li $v0, 10
    syscall
# .space reserves space in the memmory , which helps in data handling 