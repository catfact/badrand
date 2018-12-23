SRC = main.c random.c

bad-rand: $(SRC)
	gcc $(SRC) -o bad-rand

clean:
	rm bad-rand