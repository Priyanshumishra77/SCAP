jmp $main

;data section
    db 0x00
    db 0x0A

    db 0x29
    db 0x31
    db 0x2E
    db 0x30
    db 0x76
    db 0x28
    db 0x20
    db 0x53
    db 0x4F
    db 0x49
    db 0x42
    db 0x20
    db 0x50
    db 0x41
    db 0x43

letter_start: db 0x53
spl: db $letter_start
zero: db 00

main:
    ld B $zero
    ld SPL $spl
    ld SPH $zero
print:
    pop A
    st A 0xFF00 
    sub A B
    jnz $print    

end:
    jmp $end

