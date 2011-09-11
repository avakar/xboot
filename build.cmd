@echo off
avr-gcc xboot.c stub.S -mmcu=atxmega16a4 -DF_CPU=2000000 -Os -std=gnu99 -o xboot.elf -Wl,--section-start=.stub=0x000000 -Wl,--section-start=.text=0x004000
avr-objdump -h -S xboot.elf > xboot.lss
avr-objcopy -O ihex xboot.elf xboot.hex
