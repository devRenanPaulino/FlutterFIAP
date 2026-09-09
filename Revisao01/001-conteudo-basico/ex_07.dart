/*
  Exercício 7 — Analisador de números

  Analise um número e informe se ele é positivo ou negativo, par ou ímpar e se é múltiplo de 3 e de 5.
*/

void main() {
  // Lista de números fornecida no desafio extra
  final numerosParaTeste = [0, 1, 3, 5, 15, 30, -10, -15];

  // Executa o analisador para cada número da lista
  for (var num in numerosParaTeste) {
    print("=== Análise do número: $num ===");
    analisar(num);
    print(""); 
  }
}

void analisar(int numero) {
  // Lista de funções anônimas que aplicam as regras de negócio
  final regras = [
    (int n) => n >= 0 ? "Positivo" : "Negativo",
    (int n) => n % 2 == 0 ? "Par" : "Ímpar",
    (int n) => n % 3 == 0 ? "Múltiplo de 3" : "Não é múltiplo de 3",
    (int n) => n % 5 == 0 ? "Múltiplo de 5" : "Não é múltiplo de 5",
  ];

  // Processamento e exibição unificados
  for (var regra in regras) {
    print(regra(numero));
  }
}
