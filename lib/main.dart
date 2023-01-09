import 'dart:io';

void main() {
  double amount;
  stdout.write('Digite o saldo da poupança: ');
  String? savings = stdin.readLineSync();
  savings ??= '0.0'; // Igual if
  // Converte savings
  final convertedSavings = double.parse(savings);

  if (convertedSavings >= 1) {
    // amount = convertedSavings * (0.06 * 1) / 12;
    amount = (0.0006 * convertedSavings);
    stdout.write('O rendimento da poupança é $amount.');
    // M = 10.000 (1+0,15)10
  } else {
    stdout.write('A poupança não terá rendimento.');
  }
}
