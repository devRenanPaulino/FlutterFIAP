/* 
  Exercicio extra-classe
  **Calculadora com Taxa Opcional:** Crie uma função `calcularTotal` que recebe o preço unitário e a quantidade (obrigatórios), e uma taxa de imposto percentual opcional nomeada (`impostoPercentual`, padrão 0.0). Retorne o total formatado.
*/

String calcularTotal(
  double precoUnitario, 
  double quantidade,
 {double impostoPercentual = 0.0}
) {
  double subtotal = precoUnitario * quantidade;
  double valorImposto = subtotal * (impostoPercentual / 100);
  double total = subtotal + valorImposto;

  return "Total: R\$ ${total.toStringAsFixed(2)}";
}

void main() {
  print(calcularTotal(10.0, 3, impostoPercentual: 10));
}