#ifndef TABSYMBOLES_H_INCLUDED
#define TABSYMBOLES_H_INCLUDED
#define TAILLE_MAX_NOM 51
#define TAILLE_INIT_TABSYMBOLES 4



/**
 * tab symbole .c ==> pile 
 * .h
 * - init tab symbole
 * - add tab symbole
 * - remove (profondeur) tab symbole
 * - clear tab symbole
 * 
 * ensuite, dans le yacc, on inclut le .h
 * quand y'a une déclaration, on ajoute dans la table des symboles
 * 
**/

typedef struct TabSymbolesStack TabSymbolesStack;
typedef struct Symbole Symbole;

// init tab symbole
TabSymbolesStack* tabSymboles_init();

// add tab symbole
//void tabSymboles_add(Symbole* symbole);
void tabSymboles_add(char* nom, short init);

// remove (profondeur) tab symbole
void tabSymboles_remove(int depth_rem);
int tabSymboles_remove_last(void);

// clear tab symbole
void tabSymboles_clear();

int tabSymboles_get_last_address(void);
int tabSymboles_get_address(char *n);

Symbole* symbole_init(char* nom, short init, int depth);
void tabSymboles_print();

void incrementDepth();
void decrementDepth();

void init_ts();


struct TabSymbolesStack
{
    Symbole **symboles;  // taille réallouée 2^x
    int taille;
    int taille_allouee;
};

struct Symbole
{
    char nom[TAILLE_MAX_NOM];
    int init;
    int depth;
};


int depth;
TabSymbolesStack* tabS;



# endif // TABSYMBOLES_H_INCLUDED