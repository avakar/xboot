#include <avr/io.h>

.global reset_vect

.section .stub,"ax"
reset_vect:
    ldi r18, 0xD8
    ldi r19, RST_SWRST_bm
    out _SFR_IO_ADDR(CCP), r18
    sts RST_CTRL, r19
    
    ldi r18, (1<<3)
    sts PORTD_OUT, r18
    sts PORTD_DIR, r18
    rjmp .-2
