//Desafio: Sistema de Gerenciamento de Tarefas com classe e lista de objetos
//Demostrar o uso de atributo bool, parametro nomeado opcional e metodo de ação

class Tarefa {

  String titulo;
  String prioridade;
 // 'concluida'
  bool concluida;

  //O parametro 'concluida é nomedo e opcional. - padrao é false'
  Tarefa(this.titulo, this.prioridade, {this.concluida = false});

  //Método de ação marca a tarefa como concluida alterando o atributo concluida

  void concluir() {
    concluida = true;

  }

  //Exibe um resumo da tarefa com titulo, prioridade e status atual. 
  void exibirResumo() {
    //Operador ternario converte boll para texto legível
    String status = concluida ? 'concluida' : 'pendente';
    print('$titulo | Prioridade :$prioridade | Status: $status');
  }

}
  void main() {

    //Cria uma lista com tres tarefas  - todas comecam com pendentes
  List<Tarefa> tarefas = [
    Tarefa('Estudar funcoes', 'alta'),  //0 
    Tarefa('Praticar Classes', 'alta'),  //1
    Tarefa('Revisar colecoes', 'media')  //2 é um array é a 3 posição do array na lista. 
  ];

    //Marca a primeira tarefa como concluida usando o indice [0].
    tarefas[0].concluir();

    print('============Tarefas=================');

    //Percorre a lita e exbibe o resumo atualizado de cada tarefa
    for (Tarefa tarefa in tarefas) {
      tarefa.exibirResumo();

    }

  }