/*
Exercicio: gerar a tabuada de um número usando o laço 'for'
*/

import 'dart:io';

double? lerNumero(String mensagem) {
  stdout.write(mensagem);
  return double.tryParse(stdin.readLineSync() ?? '');
}

String tabuada (double fator, int multiplicador) {
  double produto = fator * multiplicador;
  String resposta = "$fator X $multiplicador = $produto";
  return resposta;
}

void main() {
  double? fatorDigitado;
  int? multiplicadorDigitado;

  while (true) {
    double? entrada = lerNumero("Digite um número para ser o fator da tabuada (O número principal): ");
    if (entrada != null) {
      fatorDigitado = entrada;
      break;
    }
    print("Entrada inválida! Por favor, digite um número válido");
  }

  while (true) {
    double? entrada = lerNumero("Digite o número limite  até onde o fator deve ser multiplicado: ");
    if (entrada != null && entrada > 0 && entrada == entrada.roundToDouble()) {
      multiplicadorDigitado = entrada.toInt();
      break; 
    }
    print("Entrada inválida! O limite deve ser um número inteiro e maior que zero.");
  }

  for (int i = 1; i <= multiplicadorDigitado; i++) {
    String linhaTabuada = tabuada(fatorDigitado, i);
    print(linhaTabuada);
  }
}