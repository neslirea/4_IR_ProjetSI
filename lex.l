
%option noyywrap
%option noinput
%option nounput

DIGIT    [0-9]
HEXA     [0-9a-f]
ID       [a-z][a-z0-9]*

%{
#include "bison.tab.h"
%}

%%

{DIGIT}+ {yylval.n = atoi(yytext); return tNB;}
0x{HEXA}+ {yylval.n = strtol(yytext, NULL, 16); return tNB;}

"if" { return tIF;}
"else" { return tELSE;}
"while" { return tWHILE;}
"print" { return tPRINT;}
"return" { return tRETURN;}
"int" { return tINT;}
"void" { return tVOID;}

{ID} { yylval.s = strdup(yytext); return tID; }

"+" { return tADD;}
"-" { return tSUB;}
"*" { return tMUL;}
"/" { return tDIV;}
"<" { return tLT;}
">" { return tGT;}
"!=" { return tNE;}
"==" { return tEQ;}
">=" { return tGE;}
"<=" { return tLE;}
"=" { return tASSIGN;}
"&&" { return tAND;}
"||" { return tOR;}
"!" { return tNOT;}
"{" { return tLBRACE;}
"}" { return tRBRACE;}
"(" { return tLPAR;}
")" { return tRPAR;}
";" { return tSEMI;}
"," { return tCOMMA;}

"//".*"\n"
"/*"(.|"\n")*"*/"
[ \t\n]+   

.           { return tERROR;}


