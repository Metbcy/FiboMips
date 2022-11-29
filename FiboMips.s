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
main:
        addiu   $sp,$sp,-48
        sw      $31,44($sp)
        sw      $fp,40($sp)
        sw      $16,36($sp)
        move    $fp,$sp
        sw      $0,24($fp)
        lui     $2,%hi($LC0)
        addiu   $5,$2,%lo($LC0)
        lui     $2,%hi(_ZSt4cout)
        addiu   $4,$2,%lo(_ZSt4cout)
        jal     std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        nop
        
        addiu   $2,$fp,28
        move    $5,$2
        lui     $2,%hi(_ZSt3cin)
        addiu   $4,$2,%lo(_ZSt3cin)
        jal     std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
        nop
        
        lw      $2,28($fp)
        nop
        slt     $2,$2,25
        beq     $2,$0,$L6
        nop
        
        b       $L7
        nop
        
$L8:
        lui     $2,%hi($LC1)
        addiu   $5,$2,%lo($LC1)
        lui     $2,%hi(_ZSt4cout)
        addiu   $4,$2,%lo(_ZSt4cout)
        jal     std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        nop
        
        move    $3,$2
        lui     $2,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
        addiu   $5,$2,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
        move    $4,$3
        jal     std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        nop
        
        lui     $2,%hi($LC0)
        addiu   $5,$2,%lo($LC0)
        lui     $2,%hi(_ZSt4cout)
        addiu   $4,$2,%lo(_ZSt4cout)
        jal     std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        nop
        
        addiu   $2,$fp,28
        move    $5,$2
        lui     $2,%hi(_ZSt3cin)
        addiu   $4,$2,%lo(_ZSt3cin)
        jal     std::basic_istream<char, std::char_traits<char> >::operator>>(int&)
        nop
        
$L7:
        lw      $2,28($fp)
        nop
        slt     $2,$2,25
        bne     $2,$0,$L8
        nop
        
$L6:
        lui     $2,%hi($LC2)
        addiu   $5,$2,%lo($LC2)
        lui     $2,%hi(_ZSt4cout)
        addiu   $4,$2,%lo(_ZSt4cout)
        jal     std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        nop
        
        b       $L9
        nop
        
$L10:
        lui     $2,%hi($LC3)
        addiu   $5,$2,%lo($LC3)
        lui     $2,%hi(_ZSt4cout)
        addiu   $4,$2,%lo(_ZSt4cout)
        jal     std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        nop
        
        move    $16,$2
        lw      $4,24($fp)
        jal     fib(int)
        nop
        
        move    $5,$2
        move    $4,$16
        jal     std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        nop
        
        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
$L9:
        lw      $2,28($fp)
        lw      $3,24($fp)
        nop
        slt     $2,$3,$2
        bne     $2,$0,$L10
        nop

        move    $2,$0
        move    $sp,$fp
        lw      $31,44($sp)
        lw      $fp,40($sp)
        lw      $16,36($sp)
        addiu   $sp,$sp,48
        jr      $31
        nop

__static_initialization_and_destruction_0(int, int):
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        sw      $4,32($fp)
        sw      $5,36($fp)
        lw      $3,32($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,$L14
        nop
        
        lw      $3,36($fp)
        li      $2,65535                    # 0xffff
        bne     $3,$2,$L14
        nop
        
        lui     $2,%hi(_ZStL8__ioinit)
        addiu   $4,$2,%lo(_ZStL8__ioinit)
        jal     std::ios_base::Init::Init() [complete object constructor]
        nop
        
        lui     $2,%hi(__dso_handle)
        
