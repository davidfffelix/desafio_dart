class CardExpiringDate {
  static String? cardExpiringDate({String? card}) {
    if (card == null || card.trim().isEmpty) {
      return 'Enter with your card expiration date';
    }
    if (!RegExp(r'^$').hasMatch(card)) {
      return 'Your card expiration date is incorrect.';
    }
  }
}
