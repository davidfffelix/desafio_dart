import 'address_model.dart';

class UserModel {
  final String name;
  final String email;
  final int password;
  final String telephone;
  final int cpf;
  final AddressModel address;
  final double? monthlyIncome;

  UserModel({
    required this.address,
    required this.name,
    required this.email,
    required this.password,
    required this.telephone,
    required this.cpf,
    this.monthlyIncome,
  });
}
