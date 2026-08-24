lw x19, f
lw x20, g
lw x21, h
lw x22, i
lw x23, j

beq x22, x23, eq; # if x22 == x23 then eq
sub x19, x20, x21 # x19 = x20 - x21
jal x0, fim

eq:
add x19, x20, x21 # x19 = x20 + x21
fim:
sw x19, f
halt

f: .word 12
g: .word 42
h: .word 36
i: .word 5
j: .word 5

/* Pseudo código:

if ( i == j):
    f = g + h
else:
    f = g - h
    
*/