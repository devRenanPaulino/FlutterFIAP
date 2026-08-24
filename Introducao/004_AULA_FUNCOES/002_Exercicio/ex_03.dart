// Função com retorno int: recebe dois números inteiros, soma e devolve o resultado que é armazenado em uma variável

import 'dart:io';

int somar(int n1, int n2) {
  return n1 + n2;
}

void main() {
  stdout.write("Digite um número para soma: ");
  int? v1 = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Digite outro número para soma: ");
  int? v2 = int.tryParse(stdin.readLineSync() ?? '');

  int resultado = somar(v1 ?? 0, v2 ?? 0);
  print("Resultado: $resultado");
}