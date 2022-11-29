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
        
        move    $16,$2
        lw      $2,40($fp)
        nop
        addiu   $2,$2,-2
        move    $4,$2
        jal     fib(int)
        nop
        
        addu    $2,$16,$2
$L4:
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        lw      $16,28($sp)
        addiu   $sp,$sp,40
        jr      $31
        nop
        
$LC0:
        .ascii  "Enter number of fibonacci terms: \000"
$LC1:
        .ascii  "This number is not valid. Try again.\000"
$LC2:
        .ascii  "Fibonacci Series: \000"
$LC3:
        .ascii  " \000"
