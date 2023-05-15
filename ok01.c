/*int compute(int a) {
  return a+1;
}

void main(void) {
    int a = 1;
    if (a){
      a = 1;
    } else {
      a = compute(a);
    }

    return 0;
}
*/
int f(int a){
  return a + 2;
}


int main(){
  int a = f(2);
  return 0;
}