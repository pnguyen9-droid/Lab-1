.section .bss
.global ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    mov $ram, %rdi
    add $0x50, %rdi          # RDI = &ram[0x50]

    movb $0xFF, (%rdi)       # ram[0x50]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x51]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x52]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x53]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x54]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x55]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x56]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x57]
    inc %rdi
    movb $0xFF, (%rdi)       # ram[0x58]

    ret

.section .note.GNU-stack,"",@progbits
