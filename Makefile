ASM ?= avra
ASMFLAGS ?= -I .
TARGET := main

.PHONY: all clean

all: $(TARGET).hex

$(TARGET).hex: main.asm knjiznica.asm
	$(ASM) $(ASMFLAGS) main.asm

clean:
	rm -f *.hex *.eep *.obj *.cof *.lst *.map *.log
