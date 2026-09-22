// Demonstração de um List String

void main() {
  List<String> nomes = ['Michael Porter', 'Egor Demin', 'Julius Randle'];
  nomes.add('Mikel Brown Jr');
  nomes.add("Terance Mann");

  print("Escalação Brooklyn Nets:");
  for (var nome in nomes) {
    print(nome);
  }
}