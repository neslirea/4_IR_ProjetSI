#ifndef TABFONCTIONS_H_INCLUDED
#define TABFONCTIONS_H_INCLUDED
#define TAILLE_NOM_FONCTION_MAX 52
#define TAILLE_INIT_TABFONCTIONS 4

typedef struct TabFonctionsStack TabFonctionsStack;


// init tab fonction
TabFonctionsStack* tabFonctions_init();
void tabFonctions_add(char* nom, int adress);
int tabFonctions_get_address(char *n);
void tabFonctions_print();
void init_tf();


struct TabFonctionsStack
{
    char **nom;    
    int *adress;   // numéro de la ligne de la fonction (en ASM)

    int taille;
    int taille_allouee;
};


TabFonctionsStack* tabF;



# endif // TABFONCTIONS_H_INCLUDED