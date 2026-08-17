# Guia de Fundamentos: Dart

Este guia aborda a estrutura básica, tipagem, inferência e interpolação no Dart.

---

## 1. Estrutura Básica
Toda aplicação Dart começa pela função `main()`. Ela é o ponto de entrada obrigatório do código.

```dart
void main() {
  // O código começa a ser executado aqui
  print('Hello, World!');
}
```

---

## 2. Tipos de Dados
Dart possui tipagem estrita para garantir segurança no desenvolvimento.

* **String**: Textos.
* **int**: Números inteiros.
* **double**: Números decimais.
* **bool**: Valores booleanos (`true` ou `false`).

```dart
void main() {
  String nome = 'Flutter';
  int ano = 2026;
  double versao = 4.5;
  bool IsAtivo = true;

  print(nome);
  print(ano);
  print(versao);
  print(IsAtivo);
}
```

---

## 3. Inferência de Tipo (`var`)
O Dart consegue adivinhar o tipo da variável automaticamente usando a palavra-chave `var`.

* **Estrita**: Uma vez definido o tipo na inicialização, ele não pode ser alterado.

```dart
void main() {
  var linguagem = 'Dart'; // O Dart infere que é uma String
  var semanas = 4;        // O Dart infere que é um int

  // linguagem = 10; // Erro! Não pode mudar de String para int
  print(linguagem);
  print(semanas);
}
```

---

## 4. Interpolação de Strings
Permite injetar valores e expressões diretamente dentro de textos de forma dinâmica.

* **Variável simples**: Use `$variavel`.
* **Expressões/Métodos**: Use `${expressao}`.

```dart
void main() {
  String tecnologia = 'Flutter';
  int quantidade = 3;

  // Interpolação simples e com expressão
  print('Estou aprendendo \(tecnologia há \)quantidade meses.');
  print('O nome em maiúsculo é: \${tecnologia.toUpperCase()}');
}
```

---

# O Ponto de Ignição: A Função main()

Todo programa em Dart necessita de um ponto de partida obrigatório para ser executado. Esse ponto é a função `main()`.

---

## Anatomia do Código

Abaixo está o código básico detalhado linha por linha:

```dart
void main() {
  print("Olá, Dart!");
}
```

### Explicação dos Componentes:

* **`void`**: O tipo de retorno. Indica que a função não devolve nenhum valor ao sistema, apenas executa ações.
* **`main()`**: O gatilho de ignição. Todo programa em Dart começa obrigatoriamente por aqui.
* **`print()`**: O comando de saída. Exibe a informação gerada diretamente no console.

---

## Console Output (Saída)

Ao rodar o bloco acima, o resultado esperado no terminal é:

```text
> Olá, Dart!
```
