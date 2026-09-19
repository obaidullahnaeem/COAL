```asm
.data 
prompt1: .asciiz "Enter T1: " 
prompt2: .asciiz "Enter T2: " 
prompt3: .asciiz "Enter T3: " 
prompt4: .asciiz "Enter T4: " 
message: .asciiz "The value of the expression is: " 
 
.text 
.globl main 
main: 
 
 
# enter T1 
li $v0, 4  
la $a0, prompt1 
syscall 
 
li $v0, 5  # take and read the  
syscall 
move $t0, $v0        # T1  10 
 
 
 
# enter T2 
 
li $v0, 4
la $a0, prompt2 
syscall 
 
li $v0, 5 
syscall 
move $t1 , $v0        # T2 5  
 
 
 
# enter T3 
li $v0 , 4 
la $a0, prompt3 
syscall 
 
li $v0, 5 
syscall 
move $t2, $v0        # T3  20 
 
 
 
# enter T4 
li $v0, 4 
la $a0, prompt4 
syscall 
 
li $v0, 5 
syscall 
move $t3, $v0        # T4   4  
 
 
 
# Part A
# T1 + T3    $t0   = 30 
add $t0, $t0, $t2 
 
 
 
# Part B
# T2 + T2 + T2 + T2 
add $t1, $t1, $t1    # T2 + T2 = 10  
add $t1, $t1, $t1    # (T2 + T2) + (T2 + T2) = 20 
 
 
 
# Part C
# Subtract Part B from Part A
sub $t0, $t0, $t1    # 30 - 20 = 10
 
 
 
# Part D
# Calculate: T4 + T4 + T4 
move $t4, $t3        # save T4  4
add $t3, $t3, $t3    # T4 + T4 = 8
add $t3, $t3, $t4    # T4 + T4 + T4 = 12
 
 
 
# Part E
# Add Part D
add $t0, $t0, $t3    # 10 + 12 = 22
 
 
 
# Part F
# Subtract 15
sub $t0, $t0, 15     # 22 - 15 = 7
 
 
 
# print message
li $v0, 4
la $a0, message
syscall
 
 
 
# print final answer
li $v0, 1
move $a0, $t0
syscall
 
 
 
# exit
li $v0, 10
syscall  

## for debugging took some help
```
