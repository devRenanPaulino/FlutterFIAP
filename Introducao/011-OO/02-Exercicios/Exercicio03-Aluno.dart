// Exercicio Desafio
// Criar uma classe Aluno e encapsular notas e regras de aprovação. 
class Aluno {

  //Atribuindo nome as duas notas do aluno
  String nome;
  double primeiraNota; //x
  double segundaNota;  //y 

    //Construtor posicional que iniciaza todos os atributos. 
  Aluno(this.nome, this.primeiraNota, this.segundaNota);

  //Método que calcula e retona a média aritmética das duas notas. 
  double calcularMedia() {
    return (primeiraNota + segundaNota) / 2;
   }

  //Crie um método que classifique a situação aluno ele esta aprovado, em recuperação ou ele esta reprovado. 
  String classificarSituacao(){
    double media = calcularMedia();

    if (media >= 7) {
      return 'Aprovado';
    }

    if (media >= 5) {
      return 'Recuperacao';
    }
    return 'Reprovado';
  }
 }
void main() {

  // Criao um aluno com as notas 8 e 6.5 = media 7.25 aprovado 
  Aluno aluno = Aluno('Marcão', 2.0, 2.5);

  //Chama o métido e exibe os resultados formatados. 
   print('Media: ${aluno.calcularMedia().toStringAsFixed(2)}');
   print('Situação: ${aluno.classificarSituacao()}');

}














// Se >=7 Aprovado
// Se >= 5 Recuperação ou seja 5 a 6 estará de recuperação
// Se <= 4.99 Reprovado; 

//Não é necessário fazer input dos dados 
//Apenas colocar os dados no print 


//Media: 7.25 consegue imprimir isso aqui..
//Situacao: Aprovado 



