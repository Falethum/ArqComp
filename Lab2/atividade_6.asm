addi x10, x0, 0x04       
addi x13, x0, 0x80       
sb x10, 1029(x0)        

loop:
    beq x10, x13, fim    # Se alcançar a porta 7, encerra

    lb x11, 1026(x0)     
    andi x11, x11, 0x1
    beq x11, x0, loop    # Aguarda o botão ser pressionado
 
espera_solta:
    lb x11, 1026(x0)
    andi x11, x11, 0x1
    bne x11, x0, espera_solta   # Aguarda soltar o botão
 
    slli x10, x10, 1     # Desloca o bit para o próximo LED
    sb x10, 1029(x0)     
    jal x0, loop
 
fim:
    halt