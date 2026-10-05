#qs 3 
.data

packages: .word 137
capacity: .word 12
price:    .word 250

full_trucks: .word 0
remaining:   .word 0
revenue:     .word 0  # price * package

msg1: .asciiz "Full Trucks: "  # 11 
msg2: .asciiz "\nRemaining Packages: "  #out of 137 , 5 remains , cuz 137/12 = 11 and remainder=5 
msg3: .asciiz "\nTotal Revenue: "    # total revenue = (137*250= 34250)

.text
.globl main

main:


la $t0, packages # Load packages address
lw $t0, 0($t0)  # Load packages amount 137


la $t1, capacity  # Load truck capacity address
lw $t1, 0($t1)  # Load truck capacity value 12


div $t0, $t1  # Divide packages by capacity 137/12 = quotent 11 remainder 5
mflo $t2          # Full trucks = quotent 11
mfhi $t3          # Remaining packages = remainder  5

# save results
sw $t2, full_trucks  # Full trucks = quotent 
sw $t3, remaining    # Remaining packages = remainder  5


# load price
la $t4, price  # price address
lw $t4, 0($t4) #price=250


mul $t5, $t0, $t4 # Revenue = packages × price


sw $t5, revenue  # save revenue


# Print full trucks
li $v0, 4 # print str
la $a0, msg1   # "Full Trucks: " 
syscall

li $v0, 1  #print int
move $a0, $t2  ## 11 
syscall


# Print remaining
li $v0, 4
la $a0, msg2
syscall

li $v0, 1
move $a0, $t3
syscall


# print revenue
li $v0, 4  #print str
la $a0, msg3 # "\nRemaining Packages: "
syscall

li $v0, 1  
move $a0, $t5   # revenue val 34250
syscall


li $v0, 10
syscall