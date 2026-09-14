/*
  Exercício 8 — Mini sistema de notas

  Calcule a média e determine a situação do aluno considerando notas, frequência e a classificação de desempenho dos aprovados.
*/

void main() {
  double nota1 = 8;
  double nota2 = 7;
  double nota3 = 9;

  String resultado;
  String motivo;

  double frequencia = 82;

  double media = calcularMedia(nota1, nota2, nota3);

  bool passouFrequencia = verificaPresenca(frequencia);

  // CORREÇÃO: Usando if/else para o Dart garantir que um dos caminhos será executado
  if (!passouFrequencia) {
    resultado = "Reprovado";
    motivo = "Frequência insuficiente";
  } else {
    resultado = classificacao(media);
  }

  

  print("=== Resultado ===");
  print("Notas: $nota1, $nota2, $nota3");
  print("Frequência: $frequencia%");
  print(" ");
  print("Média: ${media.toStringAsFixed(1)}");
  print("Resultado: " + resultado);
}

double calcularMedia(double nota1, double nota2, double nota3) {
  return (nota1 + nota2 + nota3) / 3;
}

bool verificaPresenca(double frequencia) {
  return frequencia >= 75.0;
}

String classificacao(double media) {
  if (media >= 9.0) {
    return "Aprovado — Excelente";
  } else if (media >= 8.0) {
    return "Aprovado — Bom";
  } else if (media >= 7.0) {
    return "Aprovado — Regular";
  } else {
    return "Recuperação";
  }
}
