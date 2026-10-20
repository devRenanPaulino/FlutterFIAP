// Checkpoint 01 — Exercício 01: Boletim da Turma (gabarito)
// Conceitos: variáveis · função void · array (List) · for · if/else

// Percorre a lista somando todas as notas e imprime a média (2 casas decimais).
void mostrarMedia(List<double> notas) {
  double soma = 0;
  for (var i = 0; i < notas.length; i++) {
    soma += notas[i];
  }
  double media = soma / notas.length;
  print('Média da turma: ${media.toStringAsFixed(2)}');
}

// Compara nota a nota para achar a maior, começando pela nota do índice 0.
void mostrarMaiorNota(List<double> notas) {
  double maior = notas[0];
  for (var i = 1; i < notas.length; i++) {
    if (notas[i] > maior) {
      maior = notas[i];
    }
  }
  print('Maior nota: $maior');
}

// Mesma lógica da função acima, mas guardando a menor nota encontrada.
void mostrarMenorNota(List<double> notas) {
  double menor = notas[0];
  for (var i = 1; i < notas.length; i++) {
    if (notas[i] < menor) {
      menor = notas[i];
    }
  }
  print('Menor nota: $menor');
}

// Como a função é void (não pode devolver a média para outra função usar),
// a média é recalculada aqui dentro para decidir a situação do aluno.
void mostrarSituacao(List<double> notas) {
  double soma = 0;
  for (var i = 0; i < notas.length; i++) {
    soma += notas[i];
  }
  double media = soma / notas.length;

  // Classifica a situação conforme a faixa da média.
  if (media >= 7) {
    print('Situação: Aprovado');
  } else if (media >= 5) {
    print('Situação: Recuperação');
  } else {
    print('Situação: Reprovado');
  }
}

void main() {
  // Lista de notas da turma usada como exemplo pelo enunciado.
  List<double> notas = [7.5, 4.0, 9.2, 6.0, 3.8];

  // Cada função imprime sua própria linha de resultado.
  mostrarMedia(notas);
  mostrarMaiorNota(notas);
  mostrarMenorNota(notas);
  mostrarSituacao(notas);
}
