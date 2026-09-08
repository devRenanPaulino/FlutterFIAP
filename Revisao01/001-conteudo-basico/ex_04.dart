/*
  Exercício 4 — Caixa eletrônico

  Implemente a lógica de um saque, verificando valor inválido, saldo insuficiente e se o valor é múltiplo de 10.
*/

double realizaSaque(double saldo, double valor) {
  if (valor <= 0 || valor % 10 != 0) {
    print("Valor inválido");
    return saldo;
  } else if (valor > saldo) {
    print("Saldo insuficiente.");
    return saldo;
  } else {
    print("Saque Realizado!");
    return saldo - valor;
  }
}
void main() {
  double saldo = 1000;
  double saque = 350;

  double saldoAtualizado = realizaSaque(saldo, saque);

  if (saldoAtualizado != saldo) {
    print("\n--- COMPROVANTE DE SAQUE ---");
    print("Saldo Anterior: R\$ $saldo");
    print("Saque: R\$ $saque");
    print("Saldo atual: R\$ $saldoAtualizado");
  } else {
    print("Operação cancelada. Seu saldo permanece: R\$ $saldo");
  }
}