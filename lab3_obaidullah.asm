.data 
 #num: .word 25  


#num: .word 0


#num: .word 20

#num1: .word 30
#num2: .word 20
#result: .word 0


num: .word 40

.text 
.global main 
main:

#lw $t0, num  ## t0 = 25


#li $t0, 50   ## t0= 50 
#sw $t0, num           # update num= 50 in memmory 


#lw $t0, num          # register t0= 20
#addiu $t0, $t0,15    ## t0 += 15 == 35 
#sw $t0, num 


#lw $t0, num1         ##t0=30
#lw $t1, num2         ##t1=20
#add $t2  , $t0,$t1    ## t2 = t1+t2= 50
#sw $t2 , result 


lw $t0, num
subiu $t0,  $t0,10  ## t0 = 30 
sw $t0 , num 
lw $t1 , num 



li $v0, 10
syscall