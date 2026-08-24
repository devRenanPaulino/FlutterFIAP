// void minhaFuncao() {} -> função sem parâmetros

/*
  Bem vindo(a) à aula de função!
  Soma: 12
  Olá, Renan! Você está em São Paulo.
  Dobro: [2, 4, 6, 8, 10]
*/

void main() {
  exibirBoasVindas();

  final soma = somar(8, 4);
  print("Soma: $soma");

  final saudacao = montarSaudacao(nome: "Renan", cidade: "São Paulo");
  print(saudacao);

  final numeros = [1, 2, 3, 4, 5];
  final dobrados = numeros.map((numero) => dobrar(numero)).toList();
  print("Dobro: $dobrados");
}

// 1. Função sem parâmetros e sem retorno
void exibirBoasVindas() {
  print("Bem vindo(a) à aula de função!");
}

// 2. Função com parâmetros posicionais e retorno inteiro
int somar(int a, int b) {
  return a + b;
}

// 3. Função com parâmetros nomeados obrigatórios e retorno String
String montarSaudacao({required String nome, required String cidade}) {
  return "Olá, $nome! Você está em $cidade.";
}

// 4. Função de seta (arrow function) que recebe um número e retorna o dobro
int dobrar(int numero) => numero * 2;
