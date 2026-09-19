# Title
.data 
var1: .byte  'a' , 'b' , 'c' , 'd' , 'a' , 'b' , 'c' , 'd' 

.text
.global main
main:
li $t0, 20
li $t1 , 30
add $t2 , $t0, $t1



li $v0 , 10
syscall


###      how to define data 
#  var1:  .WORD  10
# 4 byte or 32 bits 
# 2 byte or 16 bits 
# variable is stored in main memmory 
# everything is converted in binary and then stored 
# chars, string >>>  ascii is stored 
# 

