all: Syntax_Parser.o parser.o danc_parser

Syntax_Parser.o: Syntax_Parser.c
	gcc -c Syntax_Parser.c

parser.o: parser.c
	gcc -c parser.c

danc_parser: front.h parser.h parser.o Syntax_Parser.o
	gcc -o danc_parser Syntax_Parser.o parser.o

clean:
	$(RM) parser.o Syntax_Parser.o danc_parser