/*
  Exercício 3 — Maior de três números

  Compare três números e informe o maior, tratando também os casos em que dois ou três números possuem o mesmo maior valor.
*/

void main() {
  int a = 42;
  int b = 42;
  int c = 29;

  int maior = a;
  if (b > maior) maior = b;
  if (c > maior) maior = c;

  int contagem = 0;
  if (a == maior) contagem++;
  if (b == maior) contagem++;
  if (c == maior) contagem++;

  if (contagem == 3) {
    print("Os três números são iguais: $maior");
  } else if (contagem == 2) {
    print("Existem dois números empatados com o maior valor: $maior");
  } else {
    print("O maior número é $maior");
  }
}