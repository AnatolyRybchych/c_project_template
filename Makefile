CC = gcc
CCARGS = -c -g -Wpedantic -Wall
out = run.exe

$(out): objects/main.o
	$(CC) -o $@ -g $+

objects/main.o: src/main.c
	$(CC) -o $@ $(CCARGS) $<


#make args

gdb: $(out)
	@gdb $(out)

run: $(out)
	@$(out)