# Fundamentos de Dart: Operadores Essenciais

Este repositório resume os conceitos práticos de **operadores em Dart** aprendidos na aula de hoje. O conteúdo aborda desde cálculos matemáticos básicos até lógica condicional e precedência de operações.

---

## 1. Operadores Aritméticos
Utilizados para realizar operações matemáticas básicas entre números.
* `+` : Soma
* `-` : Subtração
* `*` : Multiplicação
* `/` : Divisão (retorna um número decimal/`double`)
* `%` : Resto da divisão (módulo)

---

## 2. Operadores de Atribuição Composta
Forma resumida de modificar o valor de uma variável e reatribuir o resultado a ela mesma.
* `+=` : Soma e atribui
* `-=` : Subtrai e atribui
* `*=` : Multiplica e atribui
* `~/=` : Divide de forma inteira (descarta os decimais) e atribui

---

## 3. Operadores Relacionais (Comparação)
Servem para comparar dois valores. O resultado é sempre um valor booleano (`true` ou `false`).
* `==` : Igual a
* `!=` : Diferente de
* `>` : Maior que
* `<` : Menor que

> **Nota:** Também funcionam para comparar textos (`String`), verificando a igualdade ou diferença exata dos caracteres.

---

## 4. Operadores Lógicos
Utilizados para combinar ou inverter condições booleanas.
* `&&` (AND) : Retorna `true` apenas se **todas** as condições forem verdadeiras.
* `||` (OR) : Retorna `true` se pelo menos **uma** das condições for verdadeira.
* `!` (NOT) : Inverte o valor lógico (o que é `true` vira `false` e vice-versa).

---

## 5. Precedência de Operadores
A ordem em que as expressões são avaliadas importa. Multiplicações e divisões têm prioridade sobre somas e subtrações. Para alterar essa ordem natural, utilizamos os **parênteses `()`**.

* **Sem parênteses:** `10 + 5 * 2` resulta em `20` (executa primeiro `5 * 2`).
* **Com parênteses:** `(10 + 5) * 2` resulta em `30` (executa primeiro `10 + 5`).
