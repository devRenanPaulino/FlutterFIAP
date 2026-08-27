/*
  3. **Conversor de Lista:** Utilize `.map` com Arrow Functions para transformar uma lista de nomes em caixa baixa para letras maiúsculas.
*/

void main() {

  List<String> lista = ['renan', 'maurisia', 'anderson'];
  List<String> conversao = lista.map((nome) => nome.toUpperCase()).toList();

  print(conversao);
}