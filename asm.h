#ifndef ASM_H_INCLUDED
#define ASM_H_INCLUDED

#define NB_MAX_INSTRUCTIONS 1024
#define TAILLE_MAX_INSTRUCTION 8

enum{
    ADD,
    SUB,
    MUL,
    DIV,
    COP,
    AFC,
    CMP,
    JMP,
    JE,
    JNE,
    JLT,
    JGT,
    JGE,
    JLE,
    PUSH,
    CALL,
    POP,
    RET};

void asm_add(int op, int a, int b, int c);
int get_nbInstructions();
void afficher_instructions();
void asm_update_params(int position, int a, int b, int c);
void asm_jump_reverse(int position);

# endif // ASM_H_INCLUDED
