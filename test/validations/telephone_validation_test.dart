import 'package:desafio_dart/validations/telephone_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado

  test('the telephone field must return true or empty', () {
    final telephone = TelephoneValidation.validation(telephone: '');
    expect(telephone, false);
  });

  test('the telephone field must return wrong because it has fewer characters than the default', () {
    final telephone = TelephoneValidation.validation(telephone: '1212341234');
    expect(telephone, false);
  });

  test('the telephone field must return wrong because it has less characters', () {
    final telephone = TelephoneValidation.validation(telephone: '1212341234');
    expect(telephone, false);
  });

  test('the telephone field must return wrong because it contains space in the wrong place', () {
    final telephone = TelephoneValidation.validation(telephone: '2341234 041');
    expect(telephone, false);
  });

  test('the telephone field must return wrong because it contains hyphens', () {
    final telephone = TelephoneValidation.validation(telephone: '121234-----');
    expect(telephone, false);
  });

  test('the telephone field must return wrong because it contains letters', () {
    final telephone = TelephoneValidation.validation(telephone: '123124abc333');
    expect(telephone, false);
  });

  // Caminho Certo

  test('the telephone field must return correct because it was filled in correctly', () {
    final telephone = TelephoneValidation.validation(telephone: '(12) 12345-1234');
    expect(telephone, true);
  });

  test('the telephone field must return correct because the number of digits is correct', () {
    final telephone = TelephoneValidation.validation(telephone: '12123451234');
    expect(telephone, true);
  });

  test('the telephone field must return correct as there is space between the area code and the telephone number', () {
    final telephone = TelephoneValidation.validation(telephone: '12 123451234');
    expect(telephone, true);
  });

  test('the telephone field must return correct as it has a space and a hyphen is in the correct place', () {
    final telephone = TelephoneValidation.validation(telephone: '12 12345-1234');
    expect(telephone, true);
  });

  test('the telephone field should return correct as it was filled in correctly with parentheses and space', () {
    bool teste = TelephoneValidation.validation(telephone: '(12) 123451234');
    expect(teste, true);
  });

  test('the telephone field must return correct because it was filled in correctly with the parentheses', () {
    bool teste = TelephoneValidation.validation(telephone: '(12)123451234');
    expect(teste, true);
  });
}
