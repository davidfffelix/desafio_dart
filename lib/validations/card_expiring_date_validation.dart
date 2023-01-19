class CardExpiringDate {
  static bool validation({required String card}) {
    if (!RegExp(r'^([0-9]{2})[/-]([0-9]{2})$').hasMatch(card)) {
      print('Your card expiration date is incorrect. Enter the month and year.');
      return false;
    }
    return true;
  }

  // static bool cardValidityChecker(String card) {
  //   DateTime date = DateTime.parse();
  //   DateTime datetime = DateTime.now();

  //   if ()

  // }
}
