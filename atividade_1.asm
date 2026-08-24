lw x10, a 
lw x11, b
add x12, x10, x0

bge x11, x12, end1  
add x12, x10, x11 

end1:
sw x12, m

halt

a: .word 14
b: .word 7
m: .word 0