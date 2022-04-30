all: run

run: main.o
	g++ -o run main.o
	
main.o: assembler.s
	g++ -Wall -c -o main.o assembler.s
	
assembler.s: main.cpp
	g++ -S -Wall -O4 -o assembler.s main.cpp
	
clean: 
	rm -rf *.o run
	