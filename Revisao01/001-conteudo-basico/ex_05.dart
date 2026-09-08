/*
  Exercício 5 — Sistema de desconto

  Calcule o desconto de uma compra conforme seu valor e aplique um desconto adicional caso o cliente seja VIP.
*/

double calcularDesconto(double valorCompra) {
  if (valorCompra < 10) {
    return 0.0;
  } else if(valorCompra <= 299.99) {
    return 5.0;
  } else if (valorCompra <= 499.99) {
    return 10.0;
  } else {
    return 15.0;
  }
}

double descontoVip(bool clienteVip, double desconto) {
  if (clienteVip) {
    return desconto + 5.0;
  } else {
    return desconto;
  }
}

void main() {
  double valorCompra = 450;
  bool clienteVip = true;

  double desconto = calcularDesconto(valorCompra);
  desconto = descontoVip(clienteVip, desconto);

  double total = valorCompra - (valorCompra * desconto / 100);

  print("--- NOTA FISCAL ---");
  print("Total: R\$ $valorCompra");
  print("Valor Desconto: $desconto%");
  print("Subtotal: R\$ $total");
}