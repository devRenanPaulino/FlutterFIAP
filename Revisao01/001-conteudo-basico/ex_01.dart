/*
  Exercício 1 — Classificador de idade

  Crie um programa que classifique uma pessoa como criança, adolescente, adulto ou idoso com base na idade informada.
*/

void main() {
  int idade = 17;

  if (idade >= 0 && idade <= 12) {
    print("Criança");
  } else if (idade >= 13 && idade <= 17) {
    print("Adolescente");
  } else if (idade >= 18 && idade <= 59) {
    print("Adolescente");
  } else if (idade >= 60) {
    print("Idoso");
  } else {
    print("Idade não pode ser um número negativo");
  }
}