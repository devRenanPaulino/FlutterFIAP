//Exemplificar a execução quando cai no proximo case

void main() {

  String fruta = 'melancia';

  switch (fruta) {
    case 'laranja': // vazio: cai no próximo
    case 'limão': // vazio: cai no proximo 
    case 'tangerina':
      print('$fruta é uma fruta cítrica');
      break;
    case 'banana':
    case 'maçã':
      print('$fruta não é uma fruta cítrica');
      break;
    default:
    print('Não conheço a fruta informada $fruta');

  }

}


