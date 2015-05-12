all:
	yasm -g dwarf2 -f elf64 procs.asm
	yasm -g dwarf2 -f elf64 main.asm
	gcc -g -o file-search main.o procs.o

clean:
	rm *.o
	rm file-search
