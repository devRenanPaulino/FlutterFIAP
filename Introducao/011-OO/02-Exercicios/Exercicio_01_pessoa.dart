// Criando uma clarsse simples em Dart no caso classe pessoa
// Classe `Pessoa` com dois atributos e um método 
class Pessoa {
  //Atributos : representam as caracteristicas do objeto 
  String nome; 
  int idade;
   
  //Construtor: inicializa os atributos quando um objeto é criato. 
  //this.nome e this. idade 
  Pessoa(this.nome, this.idade);

  //Método: define um comportamento da classe ou seja uma ação que o objeto vai realizar. 
  void apresentar() {
    
     //Acesssar os atributos da instacia atual usando seus nomes diretamente.
    print('$nome tem $idade anos');
    print('print no objeto');
  }
}
  //Rodou o programa
  void main() {
    
     Pessoa pessoa = Pessoa('Vinny', 44);
   
    pessoa.apresentar();
    print('passou aqui');
}
  
