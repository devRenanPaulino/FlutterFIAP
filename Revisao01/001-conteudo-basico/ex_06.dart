/*
  Exercício 6 — Sistema de empréstimo

  Verifique se um cliente pode obter um empréstimo, determine o valor máximo permitido e informe todos os motivos caso o empréstimo seja negado.
*/

void main() {
  print("--- Teste 1: Exemplo do Enunciado ---");
  processarEmprestimo(
    salario: 3500,
    idade: 25,
    possuiNomeLimpo: true,
    valorSolicitado: 15000,
  );

  print("\n--- Teste 2: Múltiplas Negativas (Menor e Nome Sujo) ---");
  processarEmprestimo(
    salario: 2500,
    idade: 16,
    possuiNomeLimpo: false,
    valorSolicitado: 5000,
  );

  print("\n--- Teste 3: Valor acima do limite ---");
  processarEmprestimo(
    salario: 2500,
    idade: 30,
    possuiNomeLimpo: true,
    valorSolicitado: 10000,
  );
}

void processarEmprestimo({
  required double salario,
  required int idade,
  required bool possuiNomeLimpo,
  required double valorSolicitado,
}) {
  List<String> motivosNegativa = [];

  if (idade < 18) {
    motivosNegativa.add("Cliente menor de idade");
  }
  if (salario < 2000) {
    motivosNegativa.add("Salário insuficiente (mínimo de R\$ 2.000)");
  }
  if (!possuiNomeLimpo) {
    motivosNegativa.add("Nome negativado");
  }

  if (motivosNegativa.isEmpty) {
    double valorMaximo;

    if (salario >= 5000) {
      valorMaximo = salario * 10;
    } else if (salario >= 3000) {
      valorMaximo = salario * 7;
    } else {
      valorMaximo = salario * 3;
    }

    if (valorSolicitado > valorMaximo) {
      print("Empréstimo negado.");
      print(
        "Motivo: Valor solicitado (R\$ $valorSolicitado) excede o valor máximo permitido (R\$ $valorMaximo).",
      );
    } else {
      print("Empréstimo aprovado!");
      print("Valor solicitado: R\$ $valorSolicitado");
      print("Valor máximo permitido: R\$ $valorMaximo");
    }
  } else {
    print("Empréstimo negado.");
    if (motivosNegativa.length == 1) {
      print("Motivo: ${motivosNegativa.first}");
    } else {
      print("\nMotivos:");
      for (var motivo in motivosNegativa) {
        print("- $motivo");
      }
    }
  }
}
