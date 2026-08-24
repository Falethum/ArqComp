lw x11, ptr

write:
lb x10, 0(x11)
beq x10, x0, fim # if x10 == x0 then fim
sb x10, 1024(x0)  # store byte in position 1024
addi x11, x11, 1
jal x0, write  

fim:
    halt
ptr: .word str
str: .string "Hello World" 
