#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "tabSymboles.h"

void tabSymboles_printDepth(int nb);


// init tab symbole
TabSymbolesStack* tabSymboles_init(){
    TabSymbolesStack *tabTmp = (TabSymbolesStack*) malloc(sizeof(TabSymbolesStack));
    tabTmp->symboles = (Symbole**) malloc(sizeof(Symbole*) * TAILLE_INIT_TABSYMBOLES);
    tabTmp->taille_allouee = TAILLE_INIT_TABSYMBOLES;
    tabTmp->taille = 0;
    return tabTmp;
}

// add tab symbole
/*void tabSymboles_add(Symbole* symbole){
    tabS->taille+=1;
    if (tabS->taille>=tabS->taille_allouee){
        tabS->symboles = (Symbole**) realloc(tabS->symboles,sizeof(Symbole*)*tabS->taille_allouee*2);
    }
    tabS->symboles[tabS->taille-1] = symbole;
}*/
void tabSymboles_add(char* nom, short init){
    tabSymboles_printDepth(depth);
    //printf("Ajout Symbole %s\n", nom);
    Symbole* symbole = symbole_init(nom, init, depth);
    tabS->taille+=1;
    if (tabS->taille>=tabS->taille_allouee){
        tabS->taille_allouee*=2;
        tabS->symboles = (Symbole**) realloc(tabS->symboles,sizeof(Symbole*)*tabS->taille_allouee);
    }
    tabS->symboles[tabS->taille-1] = symbole;

    //printf(" _ New table : \n");
    tabSymboles_print();
}

// remove (profondeur) tab symbole
void tabSymboles_remove(int depth_rem){
    while ( tabS->taille - 1 >= 0 &&   // le pt existe
            tabS->symboles[tabS->taille - 1]->depth >= depth_rem)   // la profondeur est a delete
    {
        free(tabS->symboles[tabS->taille - 1]); 
        tabS->taille--;
    }
}

// clear tab symbole
void tabSymboles_clear(){
    for(int i = tabS->taille-1; i>=0; i--){
        free(tabS->symboles[i]); 
        tabS->taille--;
    }
}

void tabSymboles_print(){
    for (int i = 0; i < tabS->taille; i++)
    {
        tabSymboles_printDepth(tabS->symboles[i]->depth);
        //printf("[%d] - %s - %d\n", i, tabS->symboles[i]->nom, tabS->symboles[i]->init);
    }
    
}
void tabSymboles_printDepth(int nb){
    for (int j = 0; j < nb; j++)
    {
        //printf("\t");
    }
}

Symbole* symbole_init(char* nom, short init, int depth){
    Symbole * sym = (Symbole*)(malloc(sizeof(Symbole)));

    sym->depth = depth;
    sym->init = init;
    strncpy(sym->nom, nom, TAILLE_MAX_NOM);

    return sym;
}
void init_ts(){
    depth = 0;
    tabS = tabSymboles_init();
}

void incrementDepth(){
    tabSymboles_printDepth(depth);
    //printf("Incrementation depth\n");
    depth++;
}
void decrementDepth(){
    depth--;
    tabSymboles_printDepth(depth);
    //printf("Decrementation depth_ new table : \n");
    tabSymboles_remove(depth + 1);
    tabSymboles_print();
}

int tabSymboles_get_last_address(void) {
    return tabS->taille - 1;
}

int tabSymboles_remove_last(void) {
    free(tabS->symboles[tabS->taille - 1]); 
    tabS->taille--;
}

int tabSymboles_get_address(char *n) {
    for (int i = tabS->taille - 1; i >= 0; i--)
    {
        if (strcmp(tabS->symboles[i]->nom, n) == 0)
            return i;
    }
    // TODO: erreur (non decl)
    //printf("!Erreur : symbole %s non déclaré\n", n);
    exit(1);
}

/*
int main(int argc, char const *argv[])
{
    TabSymbolesStack* tab = tabSymboles_init();
    Symbole * sym;

    tabSymboles_add(tab, symbole_init("ab", 1, 0));
    tabSymboles_add(tab, symbole_init("ac", 1, 0));
    tabSymboles_add(tab, symbole_init("ad", 1, 0));
    tabSymboles_add(tab, symbole_init("ae", 1, 1));
    tabSymboles_add(tab, symbole_init("af", 1, 1));
    tabSymboles_add(tab, symbole_init("ag", 1, 1));
    tabSymboles_add(tab, symbole_init("ah", 1, 2));
    tabSymboles_add(tab, symbole_init("aerte", 1, 5));

    printf("***** AVANT DELETE ***** \n");
    tabSymboles_print(tab);

    printf("***** APRES DELETE ***** \n");
    tabSymboles_remove(tab, 2);
    tabSymboles_print(tab);

    printf("***** APRES CLEAR ***** \n");
    tabSymboles_clear(tab);
    tabSymboles_print(tab);

    return 0;
}*/