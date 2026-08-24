// Total  de compra: R$ 119.70

// Exercicio de multiplos parametros e retorno double

//Calculando o valor total de uam compra: preco unitario X quantidade
double calcularPreco(double precoUnitario, int quantidade) {
  return precoUnitario * quantidade;
}

void main() {
  // ToStringAsFixed formata o valor de double para duas casas decimais
  print(calcularPreco(39.90, 3).toStringAsFixed(2));
}