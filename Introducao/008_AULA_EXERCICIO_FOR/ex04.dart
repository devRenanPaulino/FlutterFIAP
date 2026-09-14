/*
Exercicio: Calcular a soma dos 10 primeiros números naturais (1 a 10)
*/

void main() {
  int soma = 0;
  for (int i = 0; i <= 10; i++) {
    soma += i;
  }
  print("A soma dos primeiros 10 numeros naturais e: $soma");
}