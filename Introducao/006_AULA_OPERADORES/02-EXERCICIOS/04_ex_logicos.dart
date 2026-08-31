void main() {
  bool maiorDeIdade = true;
  bool possuiCarteira = false;

  print('Pode digirir (AND): ${maiorDeIdade && possuiCarteira}');
  print('Pode digirir (OR): ${maiorDeIdade || possuiCarteira}');
  print('Pode digirir (NOT): ${!maiorDeIdade || !possuiCarteira}');
}