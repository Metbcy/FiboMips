fib(int):
        addiu   $sp, $sp, -40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        sw      $16,28($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        lw      $2,40($fp)
        nop
        beq     $2,$0,$L2
        nop
        beq     $2,$0,$L2
        nop
        lw      $3,40($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,$L3
        nop
    
$L2:
        lw      $2,40($fp)
        b       $L4
        nop

$L3:
        lw      $2,40($fp)
        nop
        addiu   $2,$2,-1
        move    $4,$2
        jal     fib(int)
        nop
