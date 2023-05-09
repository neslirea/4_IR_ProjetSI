/*int compute(int a, int d) {

    return a;

}
*/

/*
	if (a == 2) {
		int c = 2;
		print(a);
	}
*/
/*

if_stmt:
    tIF tLPAR con if_memo tRPAR body {asm_update_params($4.n1-1, get_nbInstructions(), INT_MAX,INT_MAX);}
  | tIF tLPAR con if_memo tRPAR body {asm_update_params($4.n1-1, get_nbInstructions()+1, INT_MAX,INT_MAX); asm_add(JMP, 6, 9, INT_MAX); $4.n1 = get_nbInstructions();} tELSE body {asm_update_params($4.n1-1, get_nbInstructions(), INT_MAX,INT_MAX);}
  | tIF tLPAR con if_memo tRPAR body {asm_update_params($4.n1-1, get_nbInstructions()+1, INT_MAX,INT_MAX); asm_add(JMP, 6, 9, INT_MAX); $4.n1 = get_nbInstructions();} tELSE if_stmt
  ;

*/


void main(void) {
    int a = 1;
    if (a){
      a = 1;
    }else{
      a=3;
    }

    return 0;
}

