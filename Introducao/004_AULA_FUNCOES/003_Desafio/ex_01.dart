//Calculadora de pedidos com três funções encadeadas,
//cada uma com responsabilidade única: calcular o subtotal, calcular o valor do desconto e
//calcular o total final - o resultado de uma alimenta a próxima.

//Terminou envia no o link do seu github aqui no chat....

//Console

/*

=== Pedido ===
Produto: Mochila
Subtotal: R$ 240.00
Desconto: R$ 36.00
Total: R$ 204.00
*/

double calcularSubTotal(double precoUnitario, int quantidade) {
  return precoUnitario * quantidade;
}

double calcularDesconto(double subtotal, double percentualDesconto) {
  return subtotal * (percentualDesconto / 100);
}

double calcularTotal(double subtotal, double valorDesconto) {
  return subtotal - valorDesconto;
}

void main() {
  final String produto = "Mochila";
  
  final subtotal = calcularSubTotal(80, 3);
  final desconto = calcularDesconto(subtotal, 15.0);
  final total = calcularTotal(subtotal, desconto);

  print("=== Pedido ===");
  print("Produto: $produto");
  print("Subtotal: R\$ ${subtotal.toStringAsFixed(2)}");
  print("Desconto: R\$ ${desconto.toStringAsFixed(2)}");
  print("Total: R\$ ${total.toStringAsFixed(2)}");
}
