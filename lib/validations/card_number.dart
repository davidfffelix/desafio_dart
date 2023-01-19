class CardNumberValidation {
  static bool visaValidation({
    required String visaNumber,
  }) {
    if (!RegExp(r'^4[0-9]{3}\ ([0-9]{4})\ ([0-9]{4})\ ([0-9]{4})$').hasMatch(visaNumber)) {
      print('Incorrect visa card number.');
      return false;
    }
    return true;
  }

  static bool mastercardValidation({
    required String mastercardNumber,
  }) {
    if (!RegExp(r'^(4[0-9]{3}) ?([0-9]{4}) ?([0-9]{4}) ?([0-9]{4})$').hasMatch(mastercardNumber)) {
      print('Incorrect Mastercard card number.');
      return true;
    }
    return false;
  }
}
