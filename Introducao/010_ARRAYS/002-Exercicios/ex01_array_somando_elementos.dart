// Somando Elementos

void main() {
  var numbers = [5, 10, 15, 20, 25]; // imutável (var)
  var sum = 0; // Variável para armazenar a soma

  for (var number in numbers) {
    sum += number;
  }

  print(sum);
}