// Demonstração das palavras chave final e const em Dart

void main() {

  // Aceita valores que só serão conhecidos em tempo de execução
  final nomeAluno = 'Renan';

  // Exige que o valor seja uma constante literal conhecidad em compile time.
  const nomeCurso = 'ADS';

  // Outro exemplo de contante numérica que não muda durante a execução.
  const cargaHoraria = 120;

  //Exibe dados usando interpolação de String
  print("O aluno $nomeAluno está cursando $nomeCurso com uma carga horária de $cargaHoraria");
}