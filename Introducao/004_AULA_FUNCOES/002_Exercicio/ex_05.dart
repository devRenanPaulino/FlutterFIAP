//Nome: Bia
//Idade: 27
//Cidade: Recife

void exibirPerfil({
  required String nome,
  required int idade,
  required String cidade,
}) {
  print('Nome: $nome | Idade: $idade | Cidade: $cidade');
}

void main() {
  exibirPerfil(nome: "Bia", idade: 27, cidade: "Recife");
}
