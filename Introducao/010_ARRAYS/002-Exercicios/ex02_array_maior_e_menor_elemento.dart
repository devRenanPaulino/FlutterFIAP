// Maior e Menor

void main() {
  // Array de Inteiros
  var numbers = [8, 3, 12, 6, 20];
  var min = numbers[0];
  var max = numbers[0];

  for (var number in numbers) {
    if (number > max) max = number;
    if (number < min) min = number;
  }

  print(min);
  print(max);
}