SRC=$(wildcard *.c)

main: $(SRC)
	gcc -o $@ $^
