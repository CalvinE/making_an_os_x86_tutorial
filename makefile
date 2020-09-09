OUTPUTNAME=bootloader.bin

build:
	nasm -f bin bootloader.asm -o $(OUTPUTNAME)

# clean:
# 	rm ./$(OUTPUTNAME)