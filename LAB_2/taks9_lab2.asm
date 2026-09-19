

.data
prompt: .asciiz "Enter a number: "
msg: .asciiz "You entered: "






.text
.globl main
main:

li $v0, 4  ## print 
la $a0, prompt  "Enter a number: "
syscall

li $v0, 5  # take and read the input 
syscall

move $t0, $v0

li $v0, 4
la $a0, msg
syscall


li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall
