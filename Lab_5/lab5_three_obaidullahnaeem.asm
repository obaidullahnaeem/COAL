.data
marks:  .half 100, 200, 300, 400 
result: .half 0

.text
.globl main
main:
    
    la $t0, marks #load address
    lh $t1, 0($t0)      # index 0 = 100 
    lh $t2, 2($t0)      # index 1 = 200
    lh $t3, 6($t0)      # index 3 = 400 

    add $t4, $t1, $t3   # $t4 = 500
    sub $t4, $t4, $t2   # $t4 = 300

    sh $t4, result # for half use save half sh
    
    lh $t5, result # load half 
    
# same as before just print int 
    li $v0, 1          
    move $a0, $t5
    syscall


    li $v0, 10
    syscall