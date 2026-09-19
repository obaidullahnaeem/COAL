# Purpose: First program, Hello World
.text
main:
    li $v0, 5   ## service code for printing 
    #la $a0, greeting
    syscall

    li $v0, 10  ## service code for closing program
    syscall
.data
#greeting: .asciiz "Hello World"
name: .Space 20