#LEARNING CONTENTS 
# BNE , BEQ , j (jump) , label :

li $t0, 5
li $t1, 10
li $t2, 10


#bne $t0, $t1, different
beq $t4, $t4 , same 





# This runs only if they ARE equal
addiu $t3,$t3,100 
subiu $t6 ,$t6 , 300

j end

#different:
#li $v0, 1
#li $a0, 1
#syscall

same :
addiu $t4, $t4, 100

end:
li $v0,10
syscall