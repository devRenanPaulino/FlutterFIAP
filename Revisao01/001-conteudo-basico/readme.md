# Exercício 1 — Classificador de idade

## Objetivo

Praticar:

* Variáveis
* Operadores relacionais
* Estruturas condicionais
* Lógica básica

## Enunciado

Crie um programa que tenha uma variável:

```dart
int idade = 17;
```

O programa deve informar a classificação da pessoa de acordo com a idade:

| Faixa etária | Classificação |
| ------------ | ------------- |
| 0–12         | Criança       |
| 13–17        | Adolescente   |
| 18–59        | Adulto        |
| 60+          | Idoso         |

## Regras

* Não precisa utilizar funções.
* Não precisa utilizar entrada pelo teclado.
* Trabalhe apenas com variáveis, operadores e condicionais.
* O programa deve funcionar corretamente caso o valor de `idade` seja alterado.

## Exemplos

```text
idade = 10

Criança
```

```text
idade = 25

Adulto
```

```text
idade = 60

Idoso
```

## Desafio extra

Pense também no que deveria acontecer caso seja informado um valor de idade negativo.

---

# Exercício 2 — Calculadora de aprovação

## Objetivo

Praticar:

* Operadores aritméticos
* Operadores relacionais
* Operadores lógicos
* Estruturas condicionais
* Regras de negócio

## Enunciado

Você possui três notas:

```dart
double nota1 = 7.5;
double nota2 = 6.0;
double nota3 = 8.0;
```

Calcule a média das três notas.

Depois classifique o aluno de acordo com a média:

| Média      | Resultado   |
| ---------- | ----------- |
| >= 7       | Aprovado    |
| >= 5 e < 7 | Recuperação |
| < 5        | Reprovado   |

## Regra adicional

Se **qualquer uma das três notas for menor que 3**, o aluno será automaticamente reprovado, independentemente da média final.

## Exemplo

```text
Nota 1: 8
Nota 2: 8
Nota 3: 2

Média: 6
Resultado: Reprovado
```

Observe que, apesar de a média ser 6, uma das notas é menor que 3.

## Requisitos

O programa deve exibir:

```text
Nota 1: ...
Nota 2: ...
Nota 3: ...
Média: ...
Resultado: ...
```

## Desafio extra

Teste diferentes combinações de notas para garantir que todas as regras estão funcionando.

---

# Exercício 3 — Maior de três números

## Objetivo

Praticar:

* Comparações
* Operadores relacionais
* Operadores lógicos
* Estruturas condicionais
* Tratamento de casos de empate

## Enunciado

Declare três números:

```dart
int a = 17;
int b = 42;
int c = 29;
```

Descubra qual é o maior número.

## Resultado esperado

Para:

```text
17, 42, 29
```

O resultado deve ser:

```text
O maior número é 42
```

## Regra adicional

Seu programa também deve identificar situações de empate.

### Exemplo 1 — Sem empate

```text
10, 20, 30

O maior número é 30
```

### Exemplo 2 — Dois números empatados

```text
10, 30, 30

Existem dois números empatados com o maior valor: 30
```

### Exemplo 3 — Três números iguais

```text
30, 30, 30

Os três números são iguais
```

## Requisitos

O programa deve tratar corretamente:

* Um único maior número.
* Dois números empatados como maiores.
* Os três números iguais.

## Desafio extra

Tente resolver sem utilizar funções prontas como `max()`.

---

# Exercício 4 — Caixa eletrônico

## Objetivo

Praticar:

* Operadores aritméticos
* Operadores relacionais
* Operadores lógicos
* Condicionais
* Validação de dados
* Regras de negócio

## Enunciado

Imagine que você possui uma conta bancária:

```dart
double saldo = 1000;
double saque = 350;
```

Implemente a lógica para realizar um saque.

## Regras

### Valor inválido

Se o valor do saque for menor ou igual a zero:

```text
Valor inválido
```

### Saldo insuficiente

Se o valor do saque for maior que o saldo:

```text
Saldo insuficiente
```

### Saque válido

Caso contrário, o saque deve ser realizado e o saldo atualizado.

## Exemplo

Para:

```text
Saldo: R$ 1000
Saque: R$ 350
```

Resultado:

```text
Saldo anterior: R$ 1000
Saque: R$ 350
Saldo atual: R$ 650
```

## Regra adicional

O caixa eletrônico só permite saques em valores **múltiplos de 10**.

### Permitidos

```text
350
500
100
```

### Inválidos

```text
355
123
47
```

## Requisitos

O programa deve verificar as condições na ordem que você considerar mais adequada e informar claramente o motivo caso o saque não possa ser realizado.

## Desafio extra

Pense em quais outras validações seriam necessárias em um caixa eletrônico real.

---

# Exercício 5 — Sistema de desconto

## Objetivo

Praticar:

* Condicionais
* Operadores relacionais
* Operadores lógicos
* Porcentagem
* Cálculos
* Regras de negócio

## Enunciado

Uma loja possui um sistema de descontos baseado no valor da compra.

Você possui:

```dart
double valorCompra = 450;
bool clienteVip = true;
```

## Desconto para cliente normal

| Valor da compra | Desconto |
| --------------- | -------: |
| < 100           |       0% |
| 100–299.99      |       5% |
| 300–499.99      |      10% |
| >= 500          |      15% |

## Desconto para cliente VIP

O cliente VIP recebe **mais 5 pontos percentuais** de desconto em relação ao desconto normal.

### Exemplo

Uma compra de:

```text
R$ 450
```

Cliente normal:

```text
10%
```

Cliente VIP:

```text
15%
```

## O programa deve calcular

* Valor original
* Percentual de desconto
* Valor do desconto
* Valor final da compra

## Exemplo de saída

```text
Valor original: R$ 450
Desconto: 15%
Valor do desconto: R$ 67,50
Valor final: R$ 382,50
```

## Requisitos

O programa deve funcionar corretamente para diferentes valores de compra e para clientes VIP e não VIP.

## Desafio extra

Teste valores exatamente nas fronteiras:

```text
99.99
100
299.99
300
499.99
500
```

Verifique se o programa aplica a faixa correta em cada situação.

---

# Exercício 6 — Sistema de empréstimo

## Objetivo

Praticar:

* Operadores relacionais
* Operadores lógicos
* Condicionais
* Regras de negócio
* Validação de múltiplas condições
* Cálculos

## Enunciado

Você possui as seguintes informações sobre um cliente:

```dart
double salario = 3500;
int idade = 25;
bool possuiNomeLimpo = true;
```

O cliente também deseja solicitar um empréstimo:

```dart
double valorSolicitado = 15000;
```

## Regras para aprovação

O cliente só pode solicitar o empréstimo se:

* A idade for maior ou igual a 18 anos.
* O salário for maior ou igual a R$ 2.000.
* O cliente possuir nome limpo.

## Valor máximo do empréstimo

O valor máximo permitido depende do salário.

### Salário >= R$ 5.000

```text
Valor máximo = 10 × salário
```

### Salário >= R$ 3.000

```text
Valor máximo = 7 × salário
```

### Salário < R$ 3.000

```text
Valor máximo = 3 × salário
```

## Exemplo

Para:

```text
Salário: R$ 3.500
```

O valor máximo será:

```text
3.500 × 7 = R$ 24.500
```

Se o cliente solicitar:

```text
R$ 15.000
```

O resultado deverá indicar:

```text
Empréstimo aprovado!
Valor solicitado: R$ 15.000
Valor máximo permitido: R$ 24.500
```

## Em caso de negativa

O programa deve informar o motivo.

Exemplo:

```text
Empréstimo negado.
Motivo: salário insuficiente.
```

## Regra importante

Se houver **mais de um motivo para negar o empréstimo**, informe todos.

Exemplo:

```text
Empréstimo negado.

Motivos:
- Cliente menor de idade
- Nome negativado
```

## Desafio

Crie diferentes combinações de:

* Idade
* Salário
* Nome limpo
* Valor solicitado

E verifique se todas as regras são respeitadas.

---

# Desafio 7 — Analisador de números

## Objetivo

Praticar:

* Operadores aritméticos
* Operadores relacionais
* Operadores lógicos
* Operador módulo (`%`)
* Estruturas condicionais
* Organização da lógica

## Enunciado

Você possui:

```dart
int numero = 28;
```

O programa deve analisar esse número e informar:

1. Se ele é positivo ou negativo.
2. Se ele é par ou ímpar.
3. Se ele é múltiplo de 3.
4. Se ele é múltiplo de 5.

## Exemplo

Para:

```text
28
```

O resultado deve ser equivalente a:

```text
Positivo
Par
Não é múltiplo de 3
Não é múltiplo de 5
```

## Restrição

Você **não pode simplesmente copiar e colar quatro estruturas `if` independentes** seguindo exatamente o mesmo padrão.

Pense em como organizar sua solução de forma clara e coerente.

## Desafio extra

Teste também:

```text
0
1
3
5
15
30
-10
-15
```

Observe especialmente o comportamento do programa com `0` e números negativos.

---

# Desafio 8 — Mini sistema de notas

## Objetivo

Este exercício reúne os principais conceitos estudados até agora.

Pratique:

* Variáveis
* Operadores aritméticos
* Operadores relacionais
* Operadores lógicos
* Condicionais
* Cálculo de média
* Regras de negócio
* Múltiplas condições

## Enunciado

Você possui as seguintes informações:

```dart
double nota1 = 8;
double nota2 = 7;
double nota3 = 9;

double frequencia = 82;
```

Calcule a média das três notas e determine a situação do aluno.

## Regras

### Reprovado automaticamente

O aluno será reprovado se:

* A média for menor que 5.

**OU**

* A frequência for menor que 75%.

### Recuperação

O aluno estará em recuperação se:

* A média for maior ou igual a 5 e menor que 7.
* A frequência for maior ou igual a 75%.

### Aprovado

O aluno será aprovado se:

* A média for maior ou igual a 7.
* A frequência for maior ou igual a 75%.

## Classificação dos aprovados

Além de informar que o aluno foi aprovado, classifique seu desempenho:

| Média | Classificação |
| ----- | ------------- |
| >= 9  | Excelente     |
| >= 8  | Bom           |
| >= 7  | Regular       |

## Exemplos

### Exemplo 1

```text
Notas: 8, 7, 9
Frequência: 82%

Média: 8

Resultado: Aprovado — Bom
```

### Exemplo 2

```text
Notas: 6, 6, 7
Frequência: 80%

Média: 6,33

Resultado: Recuperação
```

### Exemplo 3

```text
Notas: 8, 8, 9
Frequência: 70%

Média: 8,33

Resultado: Reprovado
Motivo: Frequência insuficiente
```

## Requisitos

O programa deve:

1. Calcular a média.
2. Verificar a frequência.
3. Determinar a situação do aluno.
4. Classificar o desempenho quando aprovado.
5. Informar claramente o resultado.

## Desafio final

Teste casos em que:

* A média está exatamente em 5.
* A média está exatamente em 7.
* A média está exatamente em 8.
* A média está exatamente em 9.
* A frequência está exatamente em 75%.
* A média é suficiente, mas a frequência não.
* A frequência é suficiente, mas a média não.
* Ambos são insuficientes.

O objetivo é garantir que você entendeu as **condições de fronteira**, e não apenas o caso principal.

---