// Receber um valor entre parenteses switch (v) e comparar esse valor
// Com cada case, executando somente o bloco do case que for igual. 

void main() {
  // Opção escolhida no meu do caixa eletronico. 
  int opcao = 3;

  //opcao é o valor de (v) que o switch vai comparar com cada case. 
  switch (opcao) {
    case 1:
    print('Opção1: Consultar saldo');
    case 2: 
    print('Opção2: Sacar dinheiro');
    break;
    case 3: 
    print('Opção3: Depositar');
    break;
    case 4: 
    print('Opção4: Sair');
    break;
    default:
    //Executadado quando 'opção' não bate com nenhum case acima.
    print('opção invalida! Escolha ao menos 1 das 4 acima');

  }

}