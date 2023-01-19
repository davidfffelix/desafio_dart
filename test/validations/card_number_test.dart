import 'package:desafio_dart/validations/card_number.dart';
import 'package:test/test.dart';

void main() {
  // Caminho errado
  // Visa
  test('the visa card number must return true or empty', () {
    final cardNumber = CardNumberValidation.visaValidation(visaNumber: '');
    expect(cardNumber, false);
  });

  test('the visa card must return wrong because it starts with a number other than 4', () {
    final cardNumber = CardNumberValidation.visaValidation(visaNumber: '8321 0021 2255 8877');
    expect(cardNumber, false);
  });

  test('the visa card must return wrong because it contains periods and hyphens', () {
    final cardNumber = CardNumberValidation.visaValidation(visaNumber: '8321.0021.2255-8877');
    expect(cardNumber, false);
  });

  test('the visa card must return wrong because it contains more digits than the default', () {
    final cardNumber = CardNumberValidation.visaValidation(visaNumber: '832100212255887700');
    expect(cardNumber, false);
  });

  test('the visa card must return wrong because it contains fewer digits than the default', () {
    final cardNumber = CardNumberValidation.visaValidation(visaNumber: '83210021225588');
    expect(cardNumber, false);
  });

  test('the visa card must return wrong because it contains special characters', () {
    final cardNumber = CardNumberValidation.visaValidation(visaNumber: '832##*&1002122558877');
    expect(cardNumber, false);
  });

  // Mastercard

  test('the Mastercard card number must return true or empty', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '');
    expect(cardNumber, false);
  });

  test('the Mastercard card must return wrong because it starts with a number other than 5', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '2321 0021 2255 8877');
    expect(cardNumber, false);
  });

  test('the Mastercard card must return wrong because it contains periods and hyphens', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '8321.0021.2255-8877');
    expect(cardNumber, false);
  });

  test('the Mastercard card must return wrong because it contains more digits than the default', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '832100212255887700');
    expect(cardNumber, false);
  });

  test('the Mastercard card must return wrong because it contains fewer digits than the default', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '83210021225588');
    expect(cardNumber, false);
  });

  test('the Mastercard card must return wrong because it contains special characters', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '832##*&1002122558877');
    expect(cardNumber, false);
  });

  // Caminho Correto
  // Visa
  test('the Visa card must return correctly because it starts with 4 and contains 16 digits', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '4322880127539904');
    expect(cardNumber, false);
  });

  test('the Visa card must return correct because it was filled in correctly with the spaces', () {
    final cardNumber = CardNumberValidation.mastercardValidation(mastercardNumber: '4771 8012 0341 2904');
    expect(cardNumber, false);
  });
}
