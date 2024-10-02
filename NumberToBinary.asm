.data
    number:.word 7
    divisor:.word 2
.text
main:
    lw $t0, number
    lw $t3,divisor
    
    div $t0,$t3
    mfhi $t2
    mflo $t1
    
    li $v0,1
    move $a0,$t2
    syscall
    
    move $t0,$t1
    
    div $t0,$t3
    mfhi $t2
    mflo $t1
    
    li $v0,1
    move $a0,$t2
    syscall
    
    move $t0,$t1
    
    div $t0,$t3
    mfhi $t2
    mflo $t1
    
    li $v0,1
    move $a0,$t2
    syscall
    
    li $v0,10
    syscall