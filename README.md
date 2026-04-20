# 4x4 Matrix Keypad Arduino Assembly

AVR assembly project for an ATmega328P-based Arduino that reads a 4x4 matrix keypad, checks a 4-digit code, and lights a green or red output LED.

## What it does

- Scans a 4x4 keypad
- Stores 4 pressed keys
- Compares them against the current code
- Turns on `PB0` for success and `PB1` for failure

The current password in `main.asm` is `1 2 3 4`.

## Hardware layout

- Keypad rows: `PC0` to `PC3`
- Keypad columns: `PD4` to `PD7`
- Green LED/output: `PB0`
- Red LED/output: `PB1`

## Files

- `main.asm` - program entry point and keypad logic
- `knjiznica.asm` - UART and helper routines
- `Pictures/` - wiring and reference photos

## Build

This code uses AVR assembly syntax compatible with `avra`.

```bash
make
```

If you prefer running the assembler directly:

```bash
avra -I . main.asm
```

## Requirements

- `avra`
- An ATmega328P device definition file such as `m328pdef.inc`
- A flashing tool such as `avrdude` if you want to upload the generated hex file

## Notes

- The source now initializes the stack pointer before any `call` or `push` instructions.
- `main.asm` includes `m328pdef.inc` so the device registers are available during assembly.
- The helper library contains UART routines, but the keypad/password flow is the main program path.

## License

GPL-3.0-or-later. See [`LICENSE`](LICENSE).
