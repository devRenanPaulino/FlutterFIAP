// O _ casa com qualquer valor. 
//No switch expression ele faz o papel do default
//fica por ultimo e pega tudo que não bateu nos arms de cima
//Switch expreesion precisa cobrir todos os valores possíveis; sem o _, 
// um switch sobre int ou String nem compila

void main() {

  //Codigo de staus de uma requisição HTTP.
  int status = 200;

  String mesagem = switch (status) {
    200 => 'Ok: tudo certo',
    201 => 'Criado com sucesso',
    400 || 422 => 'Erro nos dados enviados', //junta dois valores no mesmo arm
    401 || 403 => 'Acesso negado',
    500 => 'Erro no servidor',
    _ => 'Desconhecido: $status',
  };

  print('Status $status -> $mesagem');
  
  //O _ também pode ser usado no switch statement, no lugar do default. 
  switch(status){
    case 200 || 201 :
    print('Requisição deu certo');
    break;
    case _:
    print('Requisição falhou');

  }



}