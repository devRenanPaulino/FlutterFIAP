/*
  Exercício 2 — Calculadora de aprovação

  Calcule a média de três notas e determine se o aluno foi aprovado, ficou de recuperação ou foi reprovado, considerando também a regra da nota mínima individual.
*/

void main() {
  double nota1 = 8.0;
  double nota2 = 8.0;
  double nota3 = 2.0;

  double media = (nota1 + nota2 + nota3) / 3;

  // Primeiro a validação se uma das notas forem menor que 3 reprovar direto sem a necessidade de continuar percorendo os cenários de if/else
  if(nota1 < 3 || nota2 < 3 || nota3 < 3) {
    print("Reprovado");
  } else if (media >= 7) {
    print("Aprovado");
  } else if (media >= 5 && media < 7) {
    print("Recuperação");
  } else {
    print("Reprovado!");
  }
}