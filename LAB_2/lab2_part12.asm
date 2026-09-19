.data
prompt1: .asciiz "Enter first number: "
prompt2: .asciiz "Enter second number: "


newline: .asciiz "\n"




.text
.globl main
main:

li $v0, 4  ## print 
la $a0, prompt1  ### "Enter first number: "
syscall

li $v0, 5  # take and read the input 
syscall

move $t0, $v0  # saved in t0

li $v0, 4
la $a0, prompt2   # "Enter second number: "
syscall

li $v0, 5  # take and read the 2nd thing 
syscall

move $t1, $v0  # saved in t1


add $t3, $t0 , $t1

sub $t4 ,  $t0 , $t1



## li $v0, 4  ## print a string 
li $v0 , 1   ## to print a string
move $a0 , $t3  ### 27
syscall

li $v0, 4
la $a0, newline  ## for empty line
syscall

li $v0 , 1   # subtract sum print 
move $a0 , $t4  ### always move to a0 to print 
syscall 




li $v0, 10  ## to leave the program
syscall






