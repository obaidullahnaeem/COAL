#t for tempory resistors 
#can be used 
# addi  adding constant (must use contant)
# addiu add immediate only positive most significant bit = 1 

# .data

.text
.global main
main:

##            task 3 
#li $t0, 5
#li $t1, 8
#add $t2, $t0, $t1
#sub $t3, $t2, $t0


##      task4
#li $t0, 15
#li $t1, 6
#sub $t2, $t0, $t1
#add $t3, $t2, $t1

##          task 5 
#li $t0, 10
#li $t1, 4
#add $t2, $t0, $t1 # t2=  14
#sub $t3, $t2 ,$t3 #  t3= 14-0
#add $t4, $t1, $t3 # 4-4


##                      task6 
#li $t0, 7
#li $t1, 3
#add $t2, $t0, $t1  # t2 =10 
#sub $t0, $t2, $t1  #  t0= 7
#add $t3, $t0, $t2  # t3 = 17

##                     task 8
li $t1, 10
li $t2, 5
li $t3, 20
li $t4, 4

add $t5, $t1 ,$t3  ## t5 = 30
add $t2, $t2 ,$t2
add $t2, $t2 ,$t2 # t2 = 20 
add $t6, $t4 ,$t4   # t6==6
add $t4, $t6 ,$t4  ## t4== 12

# ans in t0 
# 0 + 20 ?(5+5+5+5)+(4+4+4)?15
sub  $t7, $t5, $t2   ## 10
add $t0, $t7 , $t4  ## 22
subiu $t0, $t0,15