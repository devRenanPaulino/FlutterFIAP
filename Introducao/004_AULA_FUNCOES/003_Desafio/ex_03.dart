/*
  **Filtro Customizado (Closure):** Crie uma função `criarFiltroMaiorQue(double limite)` que retorna uma função anônima. A função retornada deve receber um número e indicar se ele é maior que o `limite`. Teste com uma lista de valores.
*/

Function criarFiltroMaiorQue(double limite) {
  return (double numero) => numero > limite;
}

void main() {

  List<double> lista = [1.0, 2.5, 3.0, 4.2, 5.0];

  var filtroMaiorQueDoisEMeio = criarFiltroMaiorQue(2.5);

  List<double> resultado = lista.where((num) => filtroMaiorQueDoisEMeio(num)).toList();

  print(resultado);
  
}