#LEARNING CONTENTS 
# BNE , BEQ , j (jump) , label :

li $t0, 5
li $t1, 10
li $t4 , 0


#bne $t0, $t1, different
bne $t4, $t4 , same 





# This runs only if they ARE equal
addiu $t3,$t3,100 
subiu $t6 ,$t6 , 300

j end

#different:
#li $v0, 1
#li $a0, 1
#syscall

b same :
addiu $t4, $t4, 100

end:
li $v0,10
syscall


#-----------------------------------------------
# > BLT
# < BGT
# >= BGE
# >=  BLE
# ==0 BEZ  BRANCH EQUAL TO ZERO
# != BNEZ 
# >= BGEZ BRANCH GREATER THAN EQUAL TO 
# <= BGEZ BRANCH LESS THAN EQUAL TO 

