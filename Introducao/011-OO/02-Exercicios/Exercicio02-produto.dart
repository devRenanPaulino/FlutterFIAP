//Crie uma classe com o método de exibição formatada. 
// Classe 'Produto' encapsula dados e comportamento relacionados e um produto. 

// Criando uma classe produto 
class Produto {
  //Atitubos público que definem as propriedades do produto 
  String nome; // qual é o nome?   poderia estar vindo de um form? de uma base? de uma api? de um objeto definido?
  double preco; // qual é o preco? 
  // Construtroe posicial: os valores são passados para ordem declarada. 
  Produto(this.nome, this.preco);
  
  // Método que exibe um resumo do produto com nome e preço formatado.
  void exbirResumo() {
    //Exibindo o simpbolo de real literalmente; toStringAsFixed(2) garante 2 casas decimais após a virgula;
    print('$nome - R\$ ${preco.toStringAsFixed(2)}');
  }
}

void main() {
  //Instanciar um objeto Produto com nome 'Magic Mouse' e preço 1099.99
  Produto produto = Produto('Mouse', 1099.99);
  //Chama o método de exibição -  sáida esperada : "Magic Mouse - 1099.99 "
 produto.exbirResumo();

}
