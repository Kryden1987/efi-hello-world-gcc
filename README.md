# efi-hello-world-gcc





Run:

export QEMU=qemu-system-x86_64

${QEMU} -bios OVMF.fd -drive file=hard.img,if=ide


OVMF.fd:

https://github.com/tianocore/tianocore.github.io/wiki/How-to-run-OVMF


UEFI on OS Dev is [there](https://wiki.osdev.org/UEFI)
