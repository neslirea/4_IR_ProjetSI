#ifndef ASM_H_INCLUDED
#define ASM_H_INCLUDED

enum{
    ADD,
    SUB,
    MUL,
    DIV,
    COP,
    AFC};

void asm_add(int op, int a, int b, int c);
int get_nbInstructions();
void afficher_instructions();




# endif // ASM_H_INCLUDED
