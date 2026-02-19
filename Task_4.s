.section .bss
.globl ram
.lcomm ram, 256     # Reserve 256 bytes of RAM (uninitialized)

.section .text
.globl fill_ram     # Make function visible to C program



fill_ram:

    mov $1, %dl            # i = 1
    mov $0, %al            # sum = 0

    loop_fill_ram:

        addb %dl, %al      # add i to sum
        inc %dl            # increment i by 1
       
        cmp $11, %dl       # if i < 11, run loop again
        jne loop_fill_ram      # if i >= 11, continue to return

        movb %al, ram+0x50

        ret                # Return control back to C program

.section .note.GNU-stack,"",@progbits