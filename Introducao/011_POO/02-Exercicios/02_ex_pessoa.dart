// Criando uma classe simples em dart no caso classe pessoa
// Classe Pessao com dois atributos

class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade);

  void apresentar() {
    //Acessar os atributos da instancia atual
    print("Olá meu nome é $nome e tenho $idade anos");
  }
}

void main() {
  Pessoa p1 = Pessoa('Renan', 19);
  p1.apresentar();
}