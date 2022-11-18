fib:
    addiu $sp, $sp, -12
    sw $ra, 0($sp) #recurssive call backup
    sw $a0, 4($sp) #recursive call backup
    sw $s0, 8($sp) #s0 back up
