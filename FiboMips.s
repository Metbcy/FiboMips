fib(int):
    addiu $sp, $sp, -40
    sw $31,36($sp)
    sw $fp,32($sp)
    sw $16,28($sp)

    beq $a0, $0, ReturnZero
    addiu $t0, $0, 0
    
