#qs2
.data
    # Store prices in .data
    price_burger:   .word 450
    price_pizza:    .word 800
    price_sandwich: .word 300
    price_drink:    .word 150

    # Prompts for user input
    prompt_burger:   .asciiz "Enter quantity of Burgers: "
    prompt_pizza:    .asciiz "Enter quantity of Pizzas: "
    prompt_sandwich: .asciiz "Enter quantity of Sandwiches: "
    prompt_drink:    .asciiz "Enter quantity of Drinks: "
    
    
    subtotal_msg: .asciiz "\nSubtotal: "
    discount_msg: .asciiz "\nDiscount: "
    final_msg:    .asciiz "\nFinal Bill: "
    
    
#v =4  print str 
#v =1  print int
#v =8  input str 
#v =5  input int 
    
    
.text
.globl main

main:

# Burger
li $v0, 4
la $a0, prompt_burger
syscall

li $v0, 5  # burger quantity int 
syscall
move $t0, $v0  # save in $t0

la $t1, price_burger
lw $t1, 0($t1)
mul $s0, $t0, $t1  # total burger price $s0 


# Pizza
li $v0, 4 
la $a0, prompt_pizza
syscall

li $v0, 5  # pizza quantity input int
syscall
move $t0, $v0   # save in $t0

la $t1, price_pizza
lw $t1, 0($t1)
mul $s1, $t0, $t1    # total pizza price $s1


# Sandwich
li $v0, 4
la $a0, prompt_sandwich
syscall

li $v0, 5  # sandwich quantity input int
syscall
move $t0, $v0   # save in $t0

la $t1, price_sandwich
lw $t1, 0($t1)
mul $s2, $t0, $t1   # total sandwich price $s2


# Drink
li $v0, 4
la $a0, prompt_drink
syscall

li $v0, 5   # drink quantity input int
syscall
move $t0, $v0   # save in $t0

la $t1, price_drink
lw $t1, 0($t1)
mul $s3, $t0, $t1  # total drink price $s3


# Subtotal
add $t2, $s0, $s1  #total burger+pizza
add $t2, $t2, $s2  #total  burger+pizza+sandwich
add $s4, $t2, $s3   #total  drink+burger+pizza+sandwich

#--------------------------------------------------------------------------------------------
# Check discount
li $t3, 5000
blt $s4, $t3, no_discount
# branch if less than    $s4<$t3  

# Discount = 10%
li $t4, 10
div $s4, $t4
mflo $s5

j final_bill


no_discount:
li $s5, 0


# Final Bill
final_bill:
sub $s6, $s4, $s5


# Print Subtotal
li $v0, 4
la $a0, subtotal_msg
syscall

li $v0, 1
move $a0, $s4
syscall


# Print Discount
li $v0, 4
la $a0, discount_msg
syscall

li $v0, 1
move $a0, $s5
syscall


# Print Final Bill
li $v0, 4
la $a0, final_msg
syscall

li $v0, 1
move $a0, $s6
syscall


# Exit
li $v0, 10
syscall
 
# total burger $s0
# total pizza $s1
# total sandwich $s2
# total drink $s3
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
