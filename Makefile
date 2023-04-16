CFLAGS=-g

all: comp

bison.tab.c bison.tab.h:	bison.y
	bison -t -v -d bison.y

lex.yy.c: lex.l bison.tab.h
	flex lex.l 

comp: lex.yy.c bison.tab.c bison.tab.h tabSymboles.c asm.c
	gcc -g -o comp bison.tab.c lex.yy.c tabSymboles.c asm.c

clean:
	rm comp bison.tab.c lex.yy.c bison.tab.h bison.output

test: all
	cat ok01.c | ./comp
