// Checkpoint 01 — Exercício 03: Filtro de Números Primos (gabarito)
// Conceitos: variáveis (bool local) · função void · array · for aninhado · if

// Recebe as listas já separadas e só cuida da impressão dos resultados.
void mostrarResultado(List<int> primos, List<int> naoPrimos) {
  print('Primos (${primos.length}): $primos');
  print('Não primos (${naoPrimos.length}): $naoPrimos');

  // Percorre a lista de primos para achar o maior valor encontrado.
  int maiorPrimo = primos[0];
  for (var i = 1; i < primos.length; i++) {
    if (primos[i] > maiorPrimo) {
      maiorPrimo = primos[i];
    }
  }
  print('Maior primo encontrado: $maiorPrimo');
}

void main() {
  List<int> numeros = [2, 15, 17, 21, 29, 33, 41, 49];
  List<int> primos = [];
  List<int> naoPrimos = [];

  // Testa cada número da lista original, um de cada vez.
  for (var i = 0; i < numeros.length; i++) {
    int numero = numeros[i];
    // Começa assumindo que é primo; qualquer divisor exato muda isso pra false.
    bool primo = true;

    if (numero < 2) {
      // Por definição, números menores que 2 não são primos.
      primo = false;
    } else {
      // Testa todos os divisores possíveis entre 2 e numero - 1.
      for (var divisor = 2; divisor < numero; divisor++) {
        if (numero % divisor == 0) {
          primo = false;
        }
      }
    }

    // Guarda o número na lista certa, de acordo com o resultado do teste.
    if (primo) {
      primos.add(numero);
    } else {
      naoPrimos.add(numero);
    }
  }

  mostrarResultado(primos, naoPrimos);
}
