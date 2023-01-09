import 'dart:io';
import 'account_model.dart';
import 'user_model.dart';

class CurrentAccountModel extends AccountModel {
  final String debitCreditCard;

  CurrentAccountModel({
    required String agency,
    required String bank,
    required String accountNumber,
    required double balance,
    required UserModel user,
    required this.debitCreditCard,
  }) : super(
          accountNumber: accountNumber,
          agency: agency,
          balance: balance,
          bank: bank,
          user: user,
        );

  void makeLoan() {
    double? amountReleased;
    //>> Recebe renda do usuário
    stdout.write('Digite a sua renda mensal: ');
    String? entryIncome = stdin.readLineSync();
    entryIncome ??= '0.0'; // Igual if
    // Converte entryIncome
    final convertedIncome = double.parse(entryIncome);
    //>> Verificar se a renda libera o empréstimo (>1000). Se for maior,
    //>> o usuário poderá solicitar um empréstimo de até 30% do seu saldo.
    if (convertedIncome > 1000) {
      amountReleased = (30 / 100) * convertedIncome;
      stdout.write('Empréstimo foi liberado. O valor liberado é $amountReleased.');
    }
    //>> Se o valor for <1000 que o empréstimo não liberado.
    else {
      stdout.write('Empréstimo rejeitado');
    }
  }
}
