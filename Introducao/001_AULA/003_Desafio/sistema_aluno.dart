import 'dart:io';

void main() {

  /*
  String nome = "Renan Paulino";
  int idade = 19;
  String curso = "Desenvolvimento de Sistemas";
  double nota = 10.0;
  bool matriculado = true;
  */

  stdout.write("Digite seu nome: ");
  String? nome = stdin.readLineSync();
  stdout.write("Digite sua idade: ");
  int? idade = int.tryParse(stdin.readLineSync() ?? '');  
  stdout.write("Digite seu curso: ");
  String? curso = stdin.readLineSync();
  stdout.write("Digite sua nota: ");
  double? nota = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("está matriculado? (S/N): ");
  String? respostaMatricula = stdin.readLineSync()?.toUpperCase();
  bool matriculado = respostaMatricula == 'S';

  // Exibindo os dados capturados
  print("\n--- Dados Cadastrados ---");
  print("Nome: $nome");
  print("Idade: $idade");
  print("Curso: $curso");
  print("Nota: $nota");
  print("Matriculado: ${matriculado ? 'Sim' : 'Não'}");
}