%{
#include <stdio.h>
#include <stdlib.h>
#include "tabSymboles.h"
#include "asm.h"

//TabSymbolesStack* tab;
//int depth;

%}

%code provides {
  int yylex (void);
  void yyerror (const char *);
}

%union { char *s; int n; }
%token <s> tID
%token <n> tNB
%token tVOID tINT
    tLBRACE tRBRACE tLPAR tRPAR
    tIF tELSE 
    tWHILE 
    tPRINT tRETURN 
    tADD tSUB tMUL tDIV 
    tLT tGT tNE tEQ tGE tLE 
    tASSIGN 
    tAND tOR 
    tNOT 
    tSEMI tCOMMA tERROR

%%

// De base : le code se compose d'un nombre >=1 de fonctions
code:
  function 
  | code function
  ;

// La fonction peut avoir comme type de sortie INT ou VOID, avec des args et un body
function:
  tINT tID tLPAR args_declaration tRPAR body { tabSymboles_clear(); }
  | tVOID tID tLPAR args_declaration tRPAR body { tabSymboles_clear(); }
  ;

// Les arguments dans la declaration des fonctions : soit void, soit rien, soit un ensemble de tINT+tId avec des virgules
args_declaration:
  %empty
  | tVOID
  | arg_declaration args_declaration1
  ;

args_declaration1:
  %empty
  | tCOMMA arg_declaration args_declaration1
  ;

arg_declaration:
  tINT tID {tabSymboles_add($2, 1);}
  ;

// Body : un ensemble de statement
body:
    tLBRACE tRBRACE
    | tLBRACE {incrementDepth();} stmts tRBRACE {decrementDepth();}
  //| {depth++;} stmts {depth--;}  
  ;
// statements : ensemble de statement
stmts:
  stmt
  | stmts stmt
  ;
// statement : lignes / blocs possible de code
stmt:
   declaration_stmt
  | assign_call_stmt 
  | print_stmt
  | return_stmt
  | if_stmt 
  | while_stmt 
  ;
// Declaration statement : permet de déclarer une ou plusieurs variables en affectant ou non une valeur
declaration_stmt:
  tINT id_list tSEMI
  ;

// Lise d'ID : liste d'id avec des virgules (utilisé pour la declaration multiple)
id_list: id_decl id_list1
  ;

id_list1:
  %empty
  | tCOMMA id_decl id_list1
  ;

id_decl :
  tID {tabSymboles_add($1, 0);}
  | tID tASSIGN expression {tabSymboles_remove_last(); tabSymboles_add($1, 1);}
  ;

// Assignment / call statement : affecte une expression à une variable ou appelle une fonction
assign_call_stmt:
   tID tASSIGN expression tSEMI
   | function_call tSEMI
   ;
// Appel d'une fonction : id, params.
function_call:
  tID tLPAR params_call tRPAR
  ;
// Paramètres d'appel d'une fonction : ensemble d'expressions avec des virgules
params_call:
   %empty
  | expression
  | params_call tCOMMA expression
  ;
// Print statement
print_stmt:
   tPRINT tLPAR expression tRPAR tSEMI
   ;
// Return statement
return_stmt:
   tRETURN expression tSEMI
   ;
// If statement : if, if else, if else if...
if_stmt:
  tIF tLPAR con tRPAR body 
  | tIF tLPAR con tRPAR body tELSE body
  | tIF tLPAR con tRPAR body tELSE if_stmt
  ;
// While statement : boucle while + body
while_stmt:
   tWHILE tLPAR con tRPAR body
   ;

// Une con(dition) : une expression qui renvoie un booléen (operation sur les conditions)
con:
  condition
  | tLPAR con tRPAR
  | tNOT tLPAR con tRPAR
  | con tOR condition
  | con tAND condition
  ;
// Une condition : une comparaison simple entre deux expressions
condition:
  expression comparator expression 
  | tNOT condition
  ;
// Une expression : un calcul qui renvoie un entier
expression:
  tNB {
    tabSymboles_add("", 1);
    asm_add("AFC", tabSymboles_get_last_address(), $1, 0);
  }
  | tID {
    tabSymboles_add("", 1);
    asm_add("COP", tabSymboles_get_last_address(), tabSymboles_get_address($1), 0);
  }
  | expression tADD expression {
    asm_add("ADD", tabSymboles_get_last_address() - 1, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address());
    tabSymboles_remove_last();
  }
  // à dupliquer pour sub mul et div
  // TODO : voir pk core dumped au realloc
  | tLPAR expression tRPAR
  ;
// Les comparateurs des booléens
comparator:
    tNE
  | tEQ
  | tGE
  | tLE
  | tLT
  | tGT
  ;
// Les opérateurs arithmétique
operation:
   tADD
  | tSUB
  | tMUL
  | tDIV
  ;
// Une valeur : soit une variable, soit un entier
nb:
   tNB // { printf("get a number : %s\n", $1); }
   | tID
   ;
%%

void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
  exit(1);
}

int main(void) {
  init_ts();
  yyparse();
}
