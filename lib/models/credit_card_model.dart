import 'card_model.dart';

class CreditDebitCardModel extends CardModel {
  final double limit;
  final double amountSpent;

  CreditDebitCardModel({
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
