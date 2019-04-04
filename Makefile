all:
	aarch64-linux-gnu-as -o add.o add.s
	aarch64-linux-gnu-ld  -Ttext=0x0 -o add.elf add.o
	aarch64-linux-gnu-objcopy  -O binary add.elf add.bin
	dd if=/dev/zero of=flash.bin bs=4k count=16k
	dd if=add.bin of=flash.bin bs=4K conv=notrunc

