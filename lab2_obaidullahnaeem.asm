#.text  ## Program instructions
#.global main
#main:


#li $t0, 10
#li $t1, 5
#add $t2, $t0, $t1

         ##      PART 4 
#.data
##  Declare/store data  e.g. declare int 

#num1: .word 10
#num2: .word 20

#.data
#num1: .word 25
#num2: .word 50
#num3: .word 100
#.text
#.globl main
#main:
#li $t0, 10

               #### PART 5 
#.data  # this data is declared in memmory
#prompt: .asciiz "Enter a number: "
#result: .asciiz "The result is: "


      ##PART 6
      
#.data
#num1: .word 15
#num2: .word 30
#num3: .word 45
#msg1: .asciiz "First number"
#msg2: .asciiz "Second number"
#msg3: .asciiz "Third number"


.text
.globl main
main:
#li $v0, 1  ## to print 
#li $a0, 25 ## 25 will show on screen 
#syscall   ## to perform the operation

##li $v0, 5  ### take and read the input 
#syscall  

#move $t0, $v0

           

#li $v0, 10  ## to terminate the program
#syscall


#li $t0, 5      
