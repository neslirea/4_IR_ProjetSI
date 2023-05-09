#include "asm.h"
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

// chaque ligne est une instruction
// Forme d'une instruction : 
//  [0]      [1]         [2]        [3]
//   OP    param_1     param_2     param_3
int instructions[NB_MAX_INSTRUCTIONS][4] = {{}};
const char labelsEnum[][TAILLE_MAX_INSTRUCTION]={
    "ADD", 
    "SUB", 
    "MUL", 
    "DIV", 
    "COP", 
    "AFC",
    "CMP",
    "JMP",
    "JE",
    "JNE",
    "JLT",
    "JGT",
    "JGE",
    "JLE",
    "PUSH",
    "CALL",
    "POP",
	"RET"};

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
	printf("UPDATE : [%d] %s", position, labelsEnum[instructions[position][0]]);
	printf("params : %d %d %d\n",a,b,c);
	instructions[position][1] = a;
	instructions[position][2] = b;
	instructions[position][3] = c;
}


void asm_jump_reverse(int position){
	int inst = instructions[position][0];

	switch (inst)
	{
	case JE:
		instructions[position][0] = JNE;
		break;

	case JNE:
		instructions[position][0] = JE;
		break;

	case JLT:
		instructions[position][0] = JGE;
		break;
		
	case JGT:
		instructions[position][0] = JLE;
		break;
		
	case JGE:
		instructions[position][0] = JLT;
		break;
		
	case JLE:
		instructions[position][0] = JGT;
		break;
	
	default:
		printf("ERROR : Instruction not JUMP\n");
		exit(-1);
		break;
	}
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
		if (param1==INT_MAX){
			printf("%s \n", labelsEnum[op]);
		} else if (param2==INT_MAX){
			printf("%s %d \n", labelsEnum[op], param1);
		} else if (param3==INT_MAX) {
			printf("%s %d %d\n", labelsEnum[op], param1, param2);
		} else {
			printf("%s %d %d %d\n", labelsEnum[op], param1, param2, param3);
		}
	}

}







