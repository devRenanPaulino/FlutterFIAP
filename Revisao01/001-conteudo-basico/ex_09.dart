void main() {
  int termos = 10;
  int anterior = 0;
  int atual = 1;

  print(anterior);
 
  for (int i = 1; i < termos; i++) {
    print(atual);
    int proximo = anterior + atual;
    anterior = atual;
    atual = proximo;  
  }
}