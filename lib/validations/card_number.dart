class CardNumberValidation {
  static String? cardNumber({
    String? cardNumber,
  }) {
    if (cardNumber == null || cardNumber.trim().isEmpty) {
      return 'Enter your card number.';
    }
    if (!RegExp(r'^$').hasMatch(cardNumber)) {
      
    }
  }
}
