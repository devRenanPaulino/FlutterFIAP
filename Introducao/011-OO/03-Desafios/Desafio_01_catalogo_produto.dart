
// Desafio: criar um catálogo de produtos com classe, lista e acumulador.
// Demonstra como combinar orientação a objetos com controle de fluxo.

// Classe Produto com três atributos e um método de exibição.
class Produto {
  String nome;
  String categoria;
  double preco;

  // Construtor posicional: recebe nome, categoria e preço nessa ordem.
  Produto(this.nome, this.categoria, this.preco);

  // Exibe um resumo do produto com todos os atributos separados por " | ".
  void exibirResumo() {
    print('$nome | $categoria | R\$ ${preco.toStringAsFixed(2)}');
  }
}

void main() {
  // Lista de produtos do catálogo — cada elemento é um objeto Produto.
  List<Produto> produtos = [
    Produto('Mouse', 'Acessorios', 89.90),
    Produto('Teclado', 'Acessorios', 150.00),
    Produto('Monitor', 'Video', 900.00),
  ];

  // Acumulador para somar os preços de todos os produtos.
  double total = 0;

  print('=== Catalogo ===');

  // Percorre cada produto, exibe seu resumo e acumula o preço no total.
  for (Produto produto in produtos) {
    produto.exibirResumo();
    total += produto.preco;
  }

  // Exibe o valor total de todos os produtos cadastrados no catálogo.
  print('Total cadastrado: R\$ ${total.toStringAsFixed(2)}');
}
