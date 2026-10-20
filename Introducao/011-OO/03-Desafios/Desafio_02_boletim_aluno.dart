// Desafio: criar um boletim escolar com funções dedicadas para calcular e classificar.
// Demonstra separação de responsabilidades: cada função faz apenas uma coisa.

// Calcula a média aritmética de duas notas.
double calcularMedia(double primeiraNota, double segundaNota) {
  // Soma as notas e divide por 2 para obter a média.
  return (primeiraNota + segundaNota) / 2;
}

// Classifica a situação do aluno com base na média calculada.
// Retorna uma String descritiva do resultado (Aprovado, Recuperação ou Reprovado).
String classificarSituacao(double media) {
  // Aprovado: média igual ou superior a 7.
  if (media >= 7) {
    return 'Aprovado';
  }

  // Recuperação: média entre 5 (inclusive) e 7 (exclusive).
  if (media >= 5) {
    return 'Recuperacao';
  }

  // Reprovado: média abaixo de 5.
  return 'Reprovado';
}

// Exibe o boletim completo do aluno usando parâmetros nomeados.
void exibirBoletim({required String aluno, required double media}) {
  print('=== Boletim ===');
  print('Aluno: $aluno');
  // Formata a média com 2 casas decimais.
  print('Media: ${media.toStringAsFixed(2)}');
  // Chama 'classificarSituacao' para obter e exibir o resultado final.
  print('Situacao: ${classificarSituacao(media)}');
}

void main() {
  // Calcula a média do aluno Lucas com notas 8.0 e 6.5 → média = 7.25.
  double media = calcularMedia(8.0, 6.5);
  // Passa o nome e a média calculada para exibir o boletim formatado.
  exibirBoletim(aluno: 'Lucas', media: media);
}
