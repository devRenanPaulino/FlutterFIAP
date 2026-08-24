# Guia Completo: Funções em Dart (Dos Fundamentos ao Sob o Capô)

Este guia foi elaborado para consolidar e aprofundar os conceitos de **Funções em Dart**, utilizando como ponto de partida a sua bagagem inicial e elevando o conhecimento para o nível exigido em arquiteturas robustas e desenvolvimento avançado com **Flutter**.

---

## 1. O Conceito Fundamental: Objetos de Primeira Classe (*First-Class Objects*)

No Dart, **tudo é um objeto**, inclusive as funções. Diferente de linguagens onde funções são apenas blocos estáticos de código no binário, em Dart uma função é uma instância da classe abstract `Function`.

### O que significa ser "First-Class Object"?
1. **Atribuição a Variáveis:** Você pode armazenar uma função em uma variável.
2. **Passagem como Argumento:** Você pode passar uma função para outra função (Higher-Order Functions).
3. **Retorno de Funções:** Uma função pode retornar outra função.

```dart
void dizerOla() => print("Olá!");

void main() {
  // Atribuindo a função a uma variável
  Function minhaVariavel = dizerOla;
  minhaVariavel(); // Executa: Olá!
}
```

---

## 2. Anatomia e Tipos de Parâmetros

A flexibilidade de parâmetros em Dart é um dos pilares da construção de *widgets* no Flutter (como `Container`, `Text`, `Scaffold`).

```
 Retorno   Nome da Função      Parâmetros
   │             │                 │
┌──┴──┐    ┌─────┴─────┐    ┌──────┴──────┐
String     montarSaudacao({required String nome, String? cidade}) {
  return "Olá, $nome de $cidade";
}
```

### 2.1. Parâmetros Posicionais Obrigatórios
São definidos por padrão. A ordem dos argumentos na chamada **deve** corresponder à ordem na declaração.

```dart
int somar(int a, int b) => a + b;
// Chamada: somar(8, 4);
```

### 2.2. Parâmetros Posicionais Opcionais (`[]`)
Envolvidos por colchetes `[]`. Se não passados, assumem `null` ou o valor padrão definido.

```dart
String saudar(String nome, [String? titulo]) {
  if (titulo != null) return "Olá, $titulo $nome";
  return "Olá, $nome";
}
// Chamadas:
// saudar("Renan")          -> "Olá, Renan"
// saudar("Renan", "Dev")    -> "Olá, Dev Renan"
```

### 2.3. Parâmetros Nomeados (`{}`)
Envolvidos por chaves `{}`. São identificados pelo nome na chamada, tornando o código legível e imune a erros de ordenação. **Eles são a base do Flutter!**

* **Obrigatórios (`required`):** Garante que o parâmetro não pode ser omitido.
* **Opcionais com valor padrão:** Possuem fallback automático.
* **Nullable (`?`):** Podem aceitar `null`.

```dart
String montarSaudacao({
  required String nome, 
  String cidade = "São Paulo", 
  int? idade,
}) {
  return "Olá, $nome! Cidade: $cidade. Idade: ${idade ?? 'Não informada'}";
}

// Chamada:
// montarSaudacao(nome: "Renan");
// montarSaudacao(cidade: "Rio de Janeiro", nome: "Maurisia");
```

---

## 3. Arrow Functions (`=>`) vs Blocos (`{}`)

A sintaxe de seta `=>` (Arrow Function) é um atalho sintático para funções que possuem **apenas uma única expressão**.

```dart
// Bloco tradicional
int dobrarBloco(int n) {
  return n * 2;
}

// Arrow function equivalente
int dobrarArrow(int n) => n * 2;
```

> **Regra de Ouro:** A seta `=>` substitui a chave `{` e o `return`. Não utilize `{ return ... }` com `=>`.

---

## 4. Funções Anônimas, Lambdas e Closures

### 4.1. Funções Anônimas (Lambdas)
São funções sem nome explícito, muito usadas como parâmetros para métodos de coleções (`map`, `where`, `forEach`).

```dart
final numeros = [1, 2, 3, 4, 5];

// (numero) => numero * 2 é uma função anônima passível de reuso instantâneo
final dobrados = numeros.map((numero) => numero * 2).toList();
```

### 4.2. Closures (Fechamentos)
Uma **Closure** é uma função que "lembra" e acessa variáveis do escopo onde foi criada, mesmo depois que esse escopo externo foi finalizado.

```dart
Function criarSomador(int valorInicial) {
  // A função retornada "captura" a variável valorInicial
  return (int numero) => valorInicial + numero;
}

void main() {
  var somarCinco = criarSomador(5);
  print(somarCinco(10)); // Retorna 15 (5 + 10)
  print(somarCinco(20)); // Retorna 25 (5 + 20)
}
```

---

## 5. Como Funciona "Por Debaixo dos Panos" (Under the Hood)

Para entender a fundo como a Dart Virtual Machine (Dart VM) e o compilador AOT (Ahead-Of-Time) tratam as funções, precisamos olhar a memória e o ciclo de execução.

```
       MEMÓRIA HEAP                       CALL STACK (PILHA)
┌───────────────────────────┐         ┌───────────────────────────┐
│                           │         │  somar(8, 4)              │
│  Objeto Function          │         ├───────────────────────────┤
│  [Code Pointer, Context]  │ ◄────── │  main()                   │
│                           │         └───────────────────────────┘
└───────────────────────────┘
```

### 5.1. A Call Stack (Pilha de Execução)
Quando uma função é invocada:
1. Um **Stack Frame** (quadro de pilha) é criado na memória Stack contendo:
   * Parâmetros passados.
   * Variáveis locais.
   * O endereço de retorno (*Return Address*).
2. O ponteiro de execução (Instruction Pointer) desvia para o endereço de memória onde o código de instruções da função reside.
3. Após o `return`, o quadro é desempilhado (*pop*) e a execução retorna ao ponto de origem.

### 5.2. Representação de Funções na Memory Heap
Como funções são objetos (`Closure` objects no C++ interno da Dart VM):
* Elas contêm um **Ponteiro de Código** para o bytecode/código nativo compilado.
* Elas possuem um **Contexto** (uma referência para o escopo pai), permitindo o suporte a Closures.

### 5.3. Inlining (Otimização pelo Compilador)
Funções pequenas (especialmente Arrow Functions como `int dobrar(int n) => n * 2;`) frequentemente sofrem **Inlining** pelo compilador Dart AOT. 

Em vez de realizar o custo de criar um Stack Frame e saltar na memória, o compilador substitui a chamada da função diretamente pela operação matemática final na instrução assembly, garantindo **alta performance de renderização no Flutter (60/120 FPS)**.

---

## 6. O Papel das Funções na Arquitetura Flutter

Entender funções em Dart puro prepara você diretamente para a sintaxe do Flutter:

| Conceito Dart | Aplicação no Flutter |
| :--- | :--- |
| **Parâmetros Nomeados** | Construtores de Widgets (`Text('Olá', style: TextStyle(...))`) |
| **Callbacks / Lambdas** | Eventos de clique e interações (`onPressed: () => salvar()`) |
| **Higher-Order Functions** | Gerenciamento de estado e construtores de listas (`ListView.builder`) |
| **Typedefs / Function Type** | Passagem de ações customizadas entre componentes pai e filho |

---

## 7. Exercícios Práticos & Desafios

Com base nos exemplos vistos em aula, implemente estes desafios para consolidar seu aprendizado:

1. **Calculadora com Taxa Opcional:** Crie uma função `calcularTotal` que recebe o preço unitário e a quantidade (obrigatórios), e uma taxa de imposto percentual opcional nomeada (`impostoPercentual`, padrão 0.0). Retorne o total formatado.
2. **Filtro Customizado (Closure):** Crie uma função `criarFiltroMaiorQue(double limite)` que retorna uma função anônima. A função retornada deve receber um número e indicar se ele é maior que o `limite`. Teste com uma lista de valores.
3. **Conversor de Lista:** Utilize `.map` com Arrow Functions para transformar uma lista de nomes em caixa baixa para letras maiúsculas.