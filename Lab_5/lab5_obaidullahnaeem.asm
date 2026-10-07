# learning data alignment


.data
numbers: .word 10, 20, 30, 40  
result:  .word 0                # Variable to store result

.text
.globl main
main:
    la $t0, numbers #load address once 
    
    lw $t1, 0($t0)      # 10
    lw $t2, 4($t0)      # 20
    lw $t3, 8($t0)      # 30
    lw $t4, 12($t0)     # 40
    
    add $t5, $t1, $t3   # t5=40

    sw $t5, result #save

    lw $t6, result # load again

    li $v0, 1           #print int
    move $a0, $t6       
    syscall


    li $v0, 10
    syscall