abstract class Pessoa {
  String nome;

  Pessoa(this.nome);
}

class Aluno extends Pessoa {
  List<double> _notas;

  Aluno(String nome, this._notas) : super(nome);
}

class Professor extends Pessoa {
  String _disciplina;

  Professor(String nome, this._disciplina) : super(nome);
}

void processarPessoa(Pessoa p) {
    switch(p) {
      case Aluno a:
      double somaNotas = 0;
      for(double nota in a._notas) {
        somaNotas += nota;
      }
      double media = a._notas.isNotEmpty ? somaNotas / a._notas.length : 0;

      print("Aluno ${a.nome} com a média ${media.toStringAsFixed(1)}");

      switch (media) {
      case >= 7.0:
        print("Status: Aprovado");
        break;
      case >= 5.0 && < 7.0:
        print("Status: Recuperação");
        break;
      case _: 
        print("Status: Reprovado");
        break;
      }
      break;

    case Professor prof:
      print("Professor(a) ${prof.nome}: Acesso liberado ao portal da disciplina ${prof._disciplina}.");
      break;

    default:
      print('403 - Acesso Negado!');
      break;
  }
}

void main() {
  List<double> notas = [10.0, 9.0, 4.0];
  Aluno aluno = Aluno('Renan', notas);
  Professor professor = Professor('Vinny', 'Mobile');

  processarPessoa(aluno);
  processarPessoa(professor);
}