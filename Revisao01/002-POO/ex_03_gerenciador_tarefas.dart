class Tarefa {
  String titulo;
  String descricao;
  String status;

  Tarefa(this.titulo, this.descricao, this.status);

  void avancarStatus() {
  switch (status) {
    case 'Pendente':
      status = 'Em Andamento';
      break;
    case 'Em Andamento':
      status = 'Concluida';
      break;
    case 'Concluida':
      print('Tarefa já concluida');
      break;
    default:
      print('Tarefa já concluída');
      break;
    }
  }
}

void main() {
  Tarefa t = Tarefa('Mobile', 'Linguagem dart', 'Pendente');
  print(t.status);
  t.avancarStatus();
  print(t.status);
  t.avancarStatus();
  print(t.status);
  t.avancarStatus();
}