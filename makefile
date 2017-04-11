CC = gcc
HEADERS = conio.h

all: conio.o conio.h minesweeper.o
	$(CC) -o minesweeper conio.o minesweeper.o

conio.o: conio.c conio.h
	$(CC) -o conio.o -g -Wall -c conio.c

minesweeper.o: minesweeper.c conio.h
	$(CC) -o minesweeper.o -g -Wall -c minesweeper.c
