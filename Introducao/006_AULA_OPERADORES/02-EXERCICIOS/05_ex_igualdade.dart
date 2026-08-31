// Comparar String e Combinar Condições com operadores lógicos

void main() {
  final String cor = 'vermelho';
  final String tamanho = 'grande';

  print("Cor é vermelho? ${cor == 'vermelho'}");
  print("Tamanho é diferente de pequeno? ${tamanho != 'pequeno'}");
  print("Combinação ${cor == 'vermelho' && tamanho == 'grande'}");

}