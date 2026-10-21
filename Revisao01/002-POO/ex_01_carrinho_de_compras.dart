import 'dart:ffi';

class Produto {
  String _nome;
  double _preco;
  String _categoria;

  Produto(this._nome, this._preco, this._categoria);

  String get nome {
    return _nome;
  }

  double get preco {
    return _preco;
  }

  String get categoria {
    return _categoria;
  }
}

class Carrinho {
  List<Produto> produtos = [];

  Carrinho(this.produtos);

  void adicionarProduto(Produto p) {
    produtos.add(p);
    print('Produto "${p.nome}" adicionado com sucesso!');
  }

  void calcularTotalComDesconto() {
    double totalComDesconto = 0.0;

    for (Produto p in produtos) {
      double precoItem = p.preco;
      double porcentagemDesconto = 0.0;

      switch (p._categoria) {
        case 'Eletrônicos':
        case 'Informática':
          porcentagemDesconto = 0.10;
          break;
        case 'Vestuário':
          porcentagemDesconto = 0.05;
          break;
        case 'Alimentos':
          porcentagemDesconto = 0.00;
          break;
        default:
          porcentagemDesconto = 0.02;
          break;
      }

      double valorDesconto = precoItem * porcentagemDesconto;
      totalComDesconto += (precoItem - valorDesconto);
    }

    print("Total do carrinho com descontos aplicados: R\$ ${totalComDesconto.toStringAsFixed(2)}");
  }
}

void main() {
  Produto p1 = Produto('Mouse', 100.00, 'Informática');
  Produto p2 = Produto('Trident', 3.00, 'Alimentos');

  List<Produto> meuCarrinho = [];
  Carrinho carrinho = Carrinho(meuCarrinho);
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.calcularTotalComDesconto();
}