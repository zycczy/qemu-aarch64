# qemu-aarch64
<shell 0>

1. make
2. qemu-system-arm -M versatilepb -nographic -kernel output.bin -S -s

   or 
   
   qemu-system-aarch64 -M virt,gic_version=3,virtualization=true,type=virt -cpu cortex-a57 -nographic -smp 4 -m 8800 -pflash flash.bin -nographic -serial /dev/null -s -S  

<shell 1>
1. arm-none-eabi-gdb 

[gdb]
1. layout regs
2. target remote :1234
3. si

