class CardNumberValidation {
  static String? visaNumber({
    String? visaNumber,
  }) {
    if (visaNumber == null || visaNumber.trim().isEmpty) {
      return 'Enter your Visa card number.';
    }
    if (!RegExp(r'^4[0-9]{3}\ ([0-9]{4})\ ([0-9]{4})\ ([0-9]{4})$').hasMatch(visaNumber)) {
      return 'Incorrect visa card number.';
    }
    return null;
  }

  static String? mastercardNumber({
    String? mastercardNumber,
  }) {
    if (mastercardNumber == null || mastercardNumber.trim().isEmpty) {
      return 'Enter your Mastercard card number.';
    }
    if (!RegExp(r'^(4[0-9]{3}) ?([0-9]{4}) ?([0-9]{4}) ?([0-9]{4})$').hasMatch(mastercardNumber)) {
      return 'Incorrect Mastercard card number.';
    }
    return null;
  }
}
