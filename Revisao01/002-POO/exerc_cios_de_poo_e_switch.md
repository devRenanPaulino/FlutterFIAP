# Exercícios de Fixação: POO e Switch Case (Dart)

Este repositório contém exercícios práticos focados em Programação Orientada a Objetos (POO), manipulação de Arrays e recursos avançados de `switch` no Dart 3 (Type Patterns, Relational Patterns, Guard Clauses e Switch Expressions).

---

## ✅ Exercícios Concluídos

### 1. Novo Carrinho de Compras (POO + Switch Fallthrough)
Sistema de carrinho de compras que aplica descontos iterando sobre uma lista de produtos, com regras de `switch` baseadas na categoria do produto.

```dart
class Produto {
  String _nome;
  double _preco;
  String _categoria;

  Produto(this._nome, this._preco, this._categoria);

  String get nome => _nome;
  double get preco => _preco;
  String get categoria => _categoria;
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

      switch (p.categoria) {
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
    print("Total com descontos: R\$ ${totalComDesconto.toStringAsFixed(2)}");
  }
}
```

### 2. Sistema de Boletim (Type Patterns e Relational Patterns)
Uso de herança e polimorfismo. O sistema avalia se o objeto é `Aluno` ou `Professor` através de Type Patterns (`case Aluno a:`) e aplica lógicas relacionais (`>= 7.0`) e wildcards (`_`).

```dart
abstract class Pessoa {
  String nome;
  Pessoa(this.nome);
}

class Aluno extends Pessoa {
  List<double> notas;
  Aluno(String nome, this.notas) : super(nome);
}

class Professor extends Pessoa {
  String disciplina;
  Professor(String nome, this.disciplina) : super(nome);
}

void processarPessoa(Pessoa p) {
  switch(p) {
    case Aluno a:
      double somaNotas = 0;
      for(double nota in a.notas) {
        somaNotas += nota;
      }
      double media = a.notas.isNotEmpty ? somaNotas / a.notas.length : 0;
      
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
      print("Professor(a) ${prof.nome}: Acesso liberado - ${prof.disciplina}.");
      break;

    default:
      print('403 - Acesso Negado!');
      break;
  }
}
```

### 3. Gerenciador de Tarefas (Encapsulamento de Estado)
Exemplo prático de como objetos devem gerenciar seu próprio estado internamente.

```dart
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
      case 'Cancelada':
        print('Atenção: Tarefa "$titulo" já finalizada.');
        break;
      default:
        print('Status inválido.');
        break;
    }
  }
}
```

---

## 🎯 Próximos Desafios (Nível Avançado - Dart 3)

### Desafio 1: Sistema Bancário com Guard Clauses (`when`)
1. Crie uma classe abstrata `Conta` com `titular` (String) e `saldo` (double).
2. Crie `ContaCorrente` (herda de `Conta`, com atributo `limite`) e `ContaPoupanca` (herda de `Conta`, com atributo `rendimento`).
3. Crie uma classe `Banco` com uma `List<Conta> contas`.
4. Crie o método `fechamentoDoMes()` na classe `Banco` iterando pelas contas.
5. Use um `switch` com **Type Patterns** e **Guard Clauses (`when`)**:
   * `case ContaPoupanca cp`: adicione o rendimento ao saldo e imprima sucesso.
   * `case ContaCorrente cc when cc.saldo < 0`: deduza R$ 50.00 do saldo e alerte sobre uso do limite.
   * `case ContaCorrente cc when cc.saldo >= 0`: imprima "Conta regular, sem taxas aplicadas".
   * `case _`: Imprima "Conta não reconhecida".

### Desafio 2: Catraca de Eventos com Switch Expressions e Enums
1. Crie um `enum CategoriaIngresso { vip, pista, camarote }`.
2. Crie uma classe `Ingresso` com `nome` (String), `idade` (int) e `categoria` (CategoriaIngresso).
3. Crie uma classe `Catraca` com o método `processarFila(List<Ingresso> fila)`.
4. No método, para cada ingresso, crie uma variável `String setor` utilizando um **Switch Expression**:
   * `CategoriaIngresso.vip` => `"Setor Vermelho"`.
   * `CategoriaIngresso.camarote` => `"Setor Dourado"`.
   * `CategoriaIngresso.pista` => `"Setor Verde"`.
5. Em seguida, faça um `switch` na `idade` usando **Relational Patterns**:
   * `< 18`: Imprima "Acesso negado para [nome]. Menor de idade."
   * `>= 18`: Imprima "Acesso liberado. [nome] para o [setor retornado]."