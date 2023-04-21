%{
#include <stdio.h>
#include <stdlib.h>
#include "tabSymboles.h"
#include "asm.h"
#include <limits.h>

//TabSymbolesStack* tab;
//int depth;
// note : $$ => résultat _ $1 : param à l'adresse 1 de la pile d'exec
%}

%code provides {
  int yylex (void);
  void yyerror (const char *);
}

%union { char *s; int n; struct {int n1; int n2;} while_info; struct {int n1; int n2;} if_info; struct {int n1; int n2;} condition_info;  }
%token <s> tID
%token <n> tNB
%type <if_info> if_memo
%type <condition_info> condition_memo
%token <while_info> tWHILE
%token tVOID tINT
    tLBRACE tRBRACE tLPAR tRPAR
    tIF tELSE 
    tPRINT tRETURN 
    tADD tSUB tMUL tDIV 
    tLT tGT tNE tEQ tGE tLE 
    tASSIGN 
    tAND tOR 
    tNOT 
    tSEMI tCOMMA tERROR
%left tADD tSUB
%left tMUL tDIV
%left tOR
%left tAND
%%
// %left tADD tSUB ==> tADD et tSUB ont le meme niveau de priorité
// %left tMUL tDIV ==> tMUL et tDIV aussi, mais ils sont + prioritaires !
// plus c'est "bas", plus c'est prioritaire

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
  | tID tASSIGN expression {tabSymboles_remove_last(); tabSymboles_add($1, 1); }
  ;

// Assignment / call statement : affecte une expression à une variable ou appelle une fonction
assign_call_stmt:
   tID tASSIGN expression tSEMI {asm_add(COP, tabSymboles_get_address($1), tabSymboles_get_last_address(), INT_MAX);}
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
if_memo: %empty {$$.n1 = get_nbInstructions();} ;

if_stmt:
    tIF if_memo tLPAR con tRPAR body
  | tIF if_memo tLPAR con tRPAR body tELSE body
  | tIF if_memo tLPAR con tRPAR body tELSE if_stmt
  ;
// While statement : boucle while + body
while_stmt:
   tWHILE 
   tLPAR {$1.n1 = get_nbInstructions();} 
   con {$1.n2 = get_nbInstructions() - 1 ; /*asm_add(JE, 0, INT_MAX, INT_MAX); */} 
   tRPAR 
   body { asm_add(JMP, $1.n1, INT_MAX, INT_MAX); asm_update_params($1.n2, get_nbInstructions(), INT_MAX,INT_MAX); }
   ;

// Une con(dition) : une expression qui renvoie un booléen (operation sur les conditions)
con:
  condition 
  | tLPAR con tRPAR
  //| tNOT tLPAR con tRPAR
  | con condition_memo 
      tOR {$2.n1 = get_nbInstructions()-1;} condition { 
      // update les jump (must jump to true if true)
      asm_update_params($2.n1, get_nbInstructions()+1, INT_MAX,INT_MAX); 
      asm_update_params(get_nbInstructions()-1, get_nbInstructions()+1, INT_MAX,INT_MAX); 
      // Si on est là c'est qu'on est false, on jump fin
      asm_add(JMP, get_nbInstructions()+2, INT_MAX, INT_MAX);
      }
  | con condition_memo 
    tAND {$2.n1 = get_nbInstructions()-1;} condition { 
      // update les jump if false
      printf("Nb instructions actuelles : %d _ $2.n1+2 = %d\n",get_nbInstructions(), $2.n1);
      asm_update_params($2.n1, get_nbInstructions()+1, INT_MAX,INT_MAX); 
      asm_update_params(get_nbInstructions()-1, get_nbInstructions()+1, INT_MAX,INT_MAX); 
      // Si on est là c'est qu'on est true, on jump déb traitement
      asm_add(JMP, get_nbInstructions()+2, INT_MAX, INT_MAX);
      // Jump de fin : jump false
      asm_add(JMP, 0, INT_MAX, INT_MAX);}
  ;

condition_memo: %empty {$$.n1 = get_nbInstructions();} ;
// Une condition : une comparaison simple entre deux expressions
/*condition:
  expression comparator expression 
  | tNOT condition
  ;*/
condition:
  condition_memo expression {$1.n1 = tabSymboles_get_last_address();} tNE expression {$1.n2 = tabSymboles_get_last_address(); asm_add(CMP, $1.n1, $1.n2, INT_MAX); asm_add(JE, 0, INT_MAX, INT_MAX);}
  | condition_memo expression {$1.n1 = tabSymboles_get_last_address();} tEQ expression {$1.n2 = tabSymboles_get_last_address(); asm_add(CMP, $1.n1, $1.n2, INT_MAX); asm_add(JNE, 0, INT_MAX, INT_MAX);} 
  | condition_memo expression {$1.n1 = tabSymboles_get_last_address();} tGE expression {$1.n2 = tabSymboles_get_last_address(); asm_add(CMP, $1.n1, $1.n2, INT_MAX); asm_add(JLT, 0, INT_MAX, INT_MAX);} 
  | condition_memo expression {$1.n1 = tabSymboles_get_last_address();} tLE expression {$1.n2 = tabSymboles_get_last_address(); asm_add(CMP, $1.n1, $1.n2, INT_MAX); asm_add(JGT, 0, INT_MAX, INT_MAX);} 
  | condition_memo expression {$1.n1 = tabSymboles_get_last_address();} tLT expression {$1.n2 = tabSymboles_get_last_address(); asm_add(CMP, $1.n1, $1.n2, INT_MAX); asm_add(JGE, 0, INT_MAX, INT_MAX);} 
  | condition_memo expression {$1.n1 = tabSymboles_get_last_address();} tGT expression {$1.n2 = tabSymboles_get_last_address(); asm_add(CMP, $1.n1, $1.n2, INT_MAX); asm_add(JLE, 0, INT_MAX, INT_MAX);} 
  | condition_memo tNOT condition {asm_jump_reverse(get_nbInstructions()-1);}          //TODO
  //| tNB {//TODO} 
  | condition_memo tID {
    // cop 0
    tabSymboles_add("", 1);
    asm_add(AFC, tabSymboles_get_last_address(), 0, INT_MAX);
    // cmp var et 0
    asm_add(CMP, tabSymboles_get_last_address(), tabSymboles_get_address($2), INT_MAX); 
    // JNE
    asm_add(JNE, 0, INT_MAX, INT_MAX);
      
    }
  | condition_memo tLPAR condition tRPAR 
  ;
// Les comparateurs des booléens
/*comparator:
    tNE
  | tEQ
  | tGE
  | tLE
  | tLT
  | tGT
  ;*/


// Une expression : un calcul qui renvoie un entier
expression:
  tNB {
    tabSymboles_add("", 1);
    asm_add(AFC, tabSymboles_get_last_address(), $1, INT_MAX);
  }
  | tID {
    tabSymboles_add("", 1);
    asm_add(COP, tabSymboles_get_last_address(), tabSymboles_get_address($1), INT_MAX);
  }
  | expression tADD expression {
    asm_add(ADD, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address());
    tabSymboles_remove_last();
  }
  | expression tSUB expression {
    asm_add(SUB, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address());
    tabSymboles_remove_last();
  }
  | expression tMUL expression {
    asm_add(MUL, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address());
    tabSymboles_remove_last();
  }
  | expression tDIV expression {
    asm_add(DIV, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address() - 1, tabSymboles_get_last_address());
    tabSymboles_remove_last();
  }
  // TODO : à dupliquer pour sub mul et div
  | tLPAR expression tRPAR
  ;


%%

void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
  exit(1);
}

int main(void) {
  init_ts();
  yyparse();
  afficher_instructions();
}
