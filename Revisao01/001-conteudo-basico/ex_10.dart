import 'dart:io';

void main() {
  stdout.write('Digite onde a sequência deve começar: ');
  int inicio = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor limite (máximo): ');
  int limite = int.parse(stdin.readLineSync()!);

  if (limite < inicio) {
    print('O limite deve ser maior ou igual ao número inicial.');
    return;
  }

  int anterior = inicio;
  int atual = (inicio == 0) ? 1 : inicio;

  if (anterior <= limite) {
    print(anterior);
  }

  while (atual <= limite) {
    print(atual);
    int proximo = anterior + atual;
    anterior = atual;
    atual = proximo;
  }

/*
  for (int atual = (inicio == 0) ? 1 : inicio; atual <= limite;) {
    print(atual);
    int proximo = anterior + atual;
    anterior = atual;
    atual = proximo;
  }
*/
}
