import 'dart:io';

import 'account_model.dart';
import 'user_model.dart';

class SavingsAccount extends AccountModel {
  final String debitCard;

  SavingsAccount({
    required String agency,
    required String bank,
    required String accountNumber,
    required double balance,
    required UserModel user,
    required this.debitCard,
  }) : super(
          accountNumber: accountNumber,
          agency: agency,
          balance: balance,
          bank: bank,
          user: user,
        );

  // Rendimento da poupança
  void savingsIncome() {
    double amount;
    stdout.write('Digite o saldo da poupança: ');
    String? savings = stdin.readLineSync();
    savings ??= '0.0'; // Igual if
    // Converte savings
    final convertedSavings = double.parse(savings);

    if (convertedSavings >= 6) {
      amount = convertedSavings * (1 + 0.06) * 12;
      stdout.write('O rendimento da poupança é $amount.');
      // M = 10.000 (1+0,15)10

    }
  }
}
