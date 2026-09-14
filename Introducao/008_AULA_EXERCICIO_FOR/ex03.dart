/*
Exercicio: imprimir todos os múltiplos de 5 no intervalo de 0 a 50;
*/
bool eMultiploDeCinco(int i) => (i % 5 == 0);
void main() {
  for (int i = 0; i <= 50; i++) {
    if (eMultiploDeCinco(i)) {
      print(i);
    }
  }
}