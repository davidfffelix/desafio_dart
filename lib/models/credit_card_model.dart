import 'card_model.dart';

class CreditCard extends CardModel {
  final String limit;
  final String amountSpent;

  CreditCard({
    required String number,
    required String flag,
    required String cvv,
    required String name,
    required String expirationDate,
    required this.limit,
    required this.amountSpent,
  }) : super(
          number: number,
          flag: flag,
          cvv: cvv,
          name: name,
          expirationDate: expirationDate,
        );
}
