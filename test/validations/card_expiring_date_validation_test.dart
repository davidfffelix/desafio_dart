import 'package:desafio_dart/validations/card_expiring_date_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado

  test('the Card Expiring Date number must return true or empty', () {
    final expirationDate = CardExpiringDate.validation(card: '');
    expect(expirationDate, false);
  });

  test('the visa card must return wrong because it was filled out with fewer numbers in the month and year', () {
    final expirationDate = CardExpiringDate.validation(card: '1-2');
    expect(expirationDate, false);
  });

  test('the Card Expiring Date must return incorrectly because a space was inserted between the month and year', () {
    final expirationDate = CardExpiringDate.validation(card: '01 23');
    expect(expirationDate, false);
  });

  test('the Card Expiring Date must return wrong because it was filled with too many digits in the part of the year', () {
    final expirationDate = CardExpiringDate.validation(card: '02-2023');
    expect(expirationDate, false);
  });

  test('the Card Expiring Date must return wrong because it was filled in with the wrong month and with extra numbers in the part of the year', () {
    final expirationDate = CardExpiringDate.validation(card: '22-2023');
    expect(expirationDate, false);
  });

  test('the Card Expiring Date must return wrong because it was filled in with the wrong month and with too many digits in the year', () {
    final expirationDate = CardExpiringDate.validation(card: '0012-2023');
    expect(expirationDate, false);
  });

  // Caminho Correto

  test('the card expiry date should return correctly because it was filled in correctly', () {
    final expirationDate = CardExpiringDate.validation(card: '01/23');
    expect(expirationDate, false);
  });

  test('the expiry date of the card should return correctly because it was correctly filled in with a hyphen', () {
    final expirationDate = CardExpiringDate.validation(card: '11-20');
    expect(expirationDate, false);
  });
}
