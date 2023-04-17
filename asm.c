#include "asm.h"
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

// chaque ligne est une instruction
// Forme d'une instruction : 
//  [0]      [1]         [2]        [3]
//   OP    param_1     param_2     param_3
int instructions[NB_MAX_INSTRUCTIONS][4] = {{}};
const char labelsEnum[][4]={
    "ADD", 
    "SUB", 
    "MUL", 
    "DIV", 
    "COP", 
    "AFC",
    "CMP",
    "JMP",
    "JE"};

// TODO :
/*
* CMP => faire en sorte qu'on puisse pas gérer que les '==' (autre truc que == ?)
* faire les IF
* vérif les whiles 
*/

int nb_instructions = 0;

void asm_add(int op, int a, int b, int c) {
	//printf("# %s %d %d %d\n", op, a, b, c);
	if(nb_instructions>=NB_MAX_INSTRUCTIONS){
		printf("ERREUR [update] : nb_instructions>=NB_MAX_INSTRUCTIONS\n");
		exit(-1);
	}
	instructions[nb_instructions][0] = op;
	instructions[nb_instructions][1] = a;
	instructions[nb_instructions][2] = b;
	instructions[nb_instructions][3] = c;
	nb_instructions++;
	
}

void asm_update_params(int position, int a, int b, int c){
	if(position>=NB_MAX_INSTRUCTIONS){
		printf("ERREUR [update] : position>=NB_MAX_INSTRUCTIONS\n");
		exit(-1);
	}
	instructions[position][1] = a;
	instructions[position][2] = b;
	instructions[position][3] = c;
}


int get_nbInstructions(){
	return nb_instructions;
}

void afficher_instructions(){
	printf("\n\n *** INSTRUCTIONS ***\n\n");
	for (int i = 0; i < nb_instructions; i++)
	{
		int op = instructions[i][0];
		int param1 = instructions[i][1];
		int param2 = instructions[i][2];
		int param3 = instructions[i][3];
		printf("[%d] # ", i);
		if (param2==INT_MAX){
			printf("%s %d \n", labelsEnum[op], param1);
		} else if (param3==INT_MAX) {
			printf("%s %d %d\n", labelsEnum[op], param1, param2);
		} else {
			printf("%s %d %d %d\n", labelsEnum[op], param1, param2, param3);
		}
	}

}







