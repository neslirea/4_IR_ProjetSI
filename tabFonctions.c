#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "tabFonctions.h"


// init tab symbole
TabFonctionsStack* tabFonctions_init(){
    TabFonctionsStack *tabTmp = (TabFonctionsStack*) malloc(sizeof(TabFonctionsStack));
    tabTmp->nom = (char**) malloc(sizeof(char*) * TAILLE_INIT_TABFONCTIONS);
    tabTmp->adress = (int*) malloc(sizeof(int) * TAILLE_INIT_TABFONCTIONS);
    tabTmp->taille_allouee = TAILLE_INIT_TABFONCTIONS;
    tabTmp->taille = 0;
    return tabTmp;
}

// add tab fonction
void tabFonctions_add(char* nom, int adress){
    //printf("Ajout Symbole %s\n", nom);
    // TODO : Gérer l'unicité des noms ex on ne veut pas qu'il y ait 2 main(s)
    tabF->taille+=1;
    if (tabF->taille>=tabF->taille_allouee){
        tabF->taille_allouee*=2;
        tabF->nom = (char**) realloc(tabF->nom,sizeof(char*)*tabF->taille_allouee);
        tabF->adress = (int*) realloc(tabF->adress,sizeof(int)*tabF->taille_allouee);
    }
    if(strlen(nom) >= TAILLE_NOM_FONCTION_MAX){
        printf("ERROR : nom de la fonction [%s] trop grand !", nom);
        exit(-1);
    }
    tabF->nom[tabF->taille-1] = (char*)malloc(sizeof(char) * strlen(nom));
    strncpy(tabF->nom[tabF->taille-1], nom, strlen(nom));
    tabF->adress[tabF->taille-1] = adress;

    //printf(" _ New table : \n");
    //tabFonctions_print();
}

void tabFonctions_print(){
    for (int i = 0; i < tabF->taille; i++)
    {
        printf("[%d] - %s - %d\n", i, tabF->nom[i], tabF->adress[i]);
    } 
}

void init_tf(){
    tabF = tabFonctions_init();
}

// retourne l'adresse où se trouve la fonction dans le code ASM
int tabFonctions_get_address(char *n) {
    for (int i = tabF->taille - 1; i >= 0; i--)
    {
        if (strcmp(tabF->nom[i], n) == 0)
            return tabF->adress[i];
    }
    // TODO: erreur (non decl)
    printf("!Erreur : fonction %s non déclaré\n", n);
    exit(1);
}


/*
int main(int argc, char const *argv[])
{
    init_tf();


    tabFonctions_add("fonk1", 2);
    tabFonctions_add("fonk2", 6);
    tabFonctions_add("fonk3", 45);
    tabFonctions_add("fonk4", 46);
    tabFonctions_add("fonk5", 69);

    tabFonctions_print();
    printf("il est a la ligne %d\n", tabFonctions_get_address("fonk5"));

    return 0;
}*/