CC      = gcc
LD      = ld

OBJCOPY = objcopy 

all:    hello

hello:  boot.o main.o stub.o
	$(LD) boot.o main.o stub.o -o hello.so -T setup.ld 
	$(OBJCOPY) -j .header -j .text -j .init -j .data -j .rodata -j .reloc -O binary hello.so hello.efi

boot.o:
	$(CC) -std=c99 -c boot.S -o boot.o -fpic

main.o:
	$(CC) -std=c99 -c main.c -o main.o -fpic

stub.o:
	$(CC) -c stub.S -o stub.o


clean:
	@rm -rf *.so *.o *.efi

