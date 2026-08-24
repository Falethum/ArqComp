lw x10, a 
lw x11, b
add x12, x0, x0

blt x11, x12, less
sub x12, x10, x11 # m = a - b
jal x0, fim  # jump to fim

less:
    add x12, x10, x11 # m = a + b

fim:
sw x12, m
halt

a: .word 25
b: .word 12
m: .word 0
