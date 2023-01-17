class CardExpiringDate {
  static String? cardExpiringDate({String? card}) {
    if (card == null || card.trim().isEmpty) {
      return 'Enter with your card expiration date';
    }
    if (!RegExp(r'^([0-9]{2})[/-]([0-9]{2})$').hasMatch(card)) {
      return 'Your card expiration date is incorrect. Your card expiration date is incorrect. Enter the month and year.';
    }
  }

  // static bool cardValidityChecker(String card) {
  //   DateTime date = DateTime.parse();
  //   DateTime datetime = DateTime.now();

  //   if ()

  // }
}
