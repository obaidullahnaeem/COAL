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

    
    #li $v0, 5  # take int input 
    #syscall
    #move $t2, $v0  #save input t2 
    
    #li $v0, 1  # print int 
    #move $a0, $t2 
    #syscall
    
    
    #li $v0 , 4 # print str 
    #la $a0, end # bye world
    #syscall
    
    #li $v0,8 # input str
    #la $a0, name # store address in name
    #li $a1, 20
    #syscall
    #move $t5, $a0 # save the address 
    
    #li $v0, 4 # to prinnt str 
    #la $a0 , name 
    #syscall
    
    
    #la $t2 , save 
    #sw $t5 , 0($t2)  # t5 mango save in t2 = save 
    
    la $t0, wor # address stored 
    lw $t1 , 0($t0)
    
    li $t6, 60
    la $t2 , wor
    sw $t6 , 16($t2)
    
    
    
    li $v0, 10  ## service code for closing program
    syscall

.data
greeting: .asciiz "Hello World"
end : .asciiz "Bye World"  
name: .Space 20 
save: .word 50
wor : .word 16 , 32 , 64 , 69 , 55


