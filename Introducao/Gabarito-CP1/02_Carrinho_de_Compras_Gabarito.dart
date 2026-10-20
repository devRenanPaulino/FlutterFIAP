// Checkpoint 01 — Exercício 02: Carrinho de Compras (gabarito)
// Conceitos: variáveis · função void · array (listas paralelas) · for · if

// Percorre as duas listas juntas pelo mesmo índice i: preços[i] é o preço
// do produto i e quantidades[i] é a quantidade comprada desse produto.
void mostrarTotalBruto(List<double> precos, List<int> quantidades) {
  double total = 0;
  for (var i = 0; i < precos.length; i++) {
    total += precos[i] * quantidades[i];
  }
  print('Total bruto: R\$ ${total.toStringAsFixed(2)}');
}

void mostrarTotalComDesconto(List<double> precos, List<int> quantidades) {
  // O total é recalculado aqui porque a função é void e não recebe
  // o total já pronto de mostrarTotalBruto.
  double total = 0;
  for (var i = 0; i < precos.length; i++) {
    total += precos[i] * quantidades[i];
  }

  // Só aplica os 10% de desconto quando o total passa de R$ 100.
  double totalFinal = total;
  bool descontoAplicado = false;
  if (total > 100) {
    totalFinal = total * 0.9;
    descontoAplicado = true;
  }

  print('Desconto aplicado: ${descontoAplicado ? "Sim (10%)" : "Não"}');
  print('Total a pagar: R\$ ${totalFinal.toStringAsFixed(2)}');
}

void main() {
  // Listas paralelas: o produto de índice i em precos usa a quantidade
  // de índice i em quantidades.
  List<double> precos = [25.0, 12.5, 8.0, 40.0];
  List<int> quantidades = [2, 3, 5, 1];

  mostrarTotalBruto(precos, quantidades);
  mostrarTotalComDesconto(precos, quantidades);
}
