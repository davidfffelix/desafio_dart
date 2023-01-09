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
    // 
  }
}
