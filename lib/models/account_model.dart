import 'user_model.dart';

abstract class AccountModel {
  final String agency;
  final String bank;
  final String accountNumber;
  final double balance;
  final UserModel user;

  const AccountModel({
    required this.agency,
    required this.bank,
    required this.accountNumber,
    required this.balance,
    required this.user,
  });

  // double transferências();
  // double sacar();
  // double depositar();
}
