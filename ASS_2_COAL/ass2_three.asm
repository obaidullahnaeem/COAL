# qs 4 
.data

permission:    .byte 0x00000037
write_result:  .byte 0
new_permission:.byte 0

.text
.globl main

main:

# Load permission
la $t0, permission
lb $t1, 0($t0)

# Write mask = 00000010
li $t2, 2


and $t3, $t1, $t2  # Check Write


sb $t3, write_result  #save the result 



li $t4, 16 # save print mask = 00010000 in $t4


or $t5, $t1, $t4  # turn Print ON


sb $t5, new_permission  # save permission


# Exit
li $v0, 10
syscall