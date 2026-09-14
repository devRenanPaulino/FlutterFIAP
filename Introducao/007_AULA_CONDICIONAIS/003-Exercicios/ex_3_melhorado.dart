import 'dart:io';

class CalculadoraService {
  final List<String> _historico = [];

  double? lerNumero(String mensagem) {
    while (true) {
      stdout.write(mensagem);
      final entrada = stdin.readLineSync()?.trim() ?? '';

      if (entrada.toLowerCase() == 's' || entrada.toLowerCase() == 'q') {
        return null; // Sinaliza saída
      }

      final numero = double.tryParse(entrada);
      if (numero != null) return numero;

      print('Valor inválido! Digite um número ou "s" para sair.');
    }
  }

  String lerOperador() {
    while (true) {
      stdout.write('Digite o operador (+, -, *, /) ou "s" para sair: ');
      final operador = stdin.readLineSync()?.trim() ?? '';

      if (operador.toLowerCase() == 's' || operador.toLowerCase() == 'q') {
        return 's';
      }

      if (['+', '-', '*', '/'].contains(operador)) {
        return operador;
      }

      print('Operador inválido! Use apenas +, -, * ou /.');
    }
  }

  void calcular(double num1, String operador, double num2) {
    double? resultado;
    String operacaoStr = '$num1 $operador $num2';

    switch (operador) {
      case '+':
        resultado = num1 + num2;
        break;
      case '-':
        resultado = num1 - num2;
        break;
      case '*':
        resultado = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print('Erro: Divisão por zero não é permitida.');
          return;
        }
        resultado = num1 / num2;
        break;
    }

    if (resultado != null) {
      final registro = '$operacaoStr = $resultado';
      _historico.add(registro);
      print('\n✔ Resultado: $resultado\n');
    }
  }

  void mostrarHistorico() {
    print('\n--- Histórico de Operações ---');
    if (_historico.isEmpty) {
      print('Nenhuma operação realizada ainda.');
    } else {
      for (var i = 0; i < _historico.length; i++) {
        print('${i + 1}. ${_historico[i]}');
      }
    }
    print('--------------------------------\n');
  }
}

void main() {
  final calc = CalculadoraService();
  print(" ");
  print('    CALCULADORA DART  ');
  print(" ");
  print('Dica: Digite "s" a qualquer momento para sair.\n');

  while (true) {
    final num1 = calc.lerNumero('Digite o primeiro número: ');
    if (num1 == null) break;

    final operador = calc.lerOperador();
    if (operador == 's') break;

    final num2 = calc.lerNumero('Digite o segundo número: ');
    if (num2 == null) break;

    calc.calcular(num1, operador, num2);

    stdout.write('Deseja ver o histórico? (s/n): ');
    final verHist = stdin.readLineSync()?.trim().toLowerCase();
    if (verHist == 's') {
      calc.mostrarHistorico();
    }

    stdout.write('Fazer outro cálculo? (s/n): ');
    final continuar = stdin.readLineSync()?.trim().toLowerCase();
    if (continuar != 's') {
      print('\nEncerrando a calculadora. Até mais!');
      break;
    }
    print('\n--- Novo Cálculo ---\n');
  }
}
