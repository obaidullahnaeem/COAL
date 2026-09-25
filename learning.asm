# Purpose: First program, Hello World
.text
main:
     #li $v0, 4   ##  printing str
     #la $a0, greeting  # address 
     #syscall

    

    #li $v0, 8 # input str 
    #la $a0, name # store address
    #li $a1, 20  ## store the space for it 
    #syscall
    #move $t1, $a0
    
    #li $v0 , 4  # print str 
    #move $a0, $t1 # save and print 
    #syscall

    
    li $v0, 5  # take int input 
    syscall
    move $t2, $v0  #save input t2 
    
    li $v0, 1  # print int 
    move $a0, $t2 
    syscall
    
    
    li $v0 , 4 # print str 
    la $a0, end # bye world
    syscall
    

     li $v0, 10  ## service code for closing program
     syscall

.data
greeting: .asciiz "Hello World"
end : .asciiz "Bye World"
name: .Space 20


