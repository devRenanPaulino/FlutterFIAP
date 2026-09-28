// Criar um objeto simples usando Map
// Cada informação do produto fica em um par de chave/valor

void main() {
  
  final caneta = {
    'nome' : 'Caneta Vermelha',
    'preco' : 4.00,
    'qtd_estoque': 120,
    'disponivel' : true,
  };

  print('Produto: ${caneta['nome']}');
  print('Preço: ${caneta['preco']}');
  print('Estoque: ${caneta['qtd_estoque']}');
  print('Disponível: ${caneta['disponivel'] == true ? 'Sim' : 'Não'}');
}