import 'package:desafio_dart/validations/password_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho errado

  test('the password field must return true or empty', () {
    final telephone = PasswordValidation.validation(password: '');
    expect(telephone, false);
  });

  test('the password field must return wrong because it contains spaces', () {
    final telephone = PasswordValidation.validation(password: '1234567  ');
    expect(telephone, false);
  });

  test('the password field must return wrong because it has fewer numbers', () {
    final telephone = PasswordValidation.validation(password: '1234567');
    expect(telephone, false);
  });

  test('the password field must return wrong because it has more numbers than the default', () {
    final telephone = PasswordValidation.validation(password: '123456789');
    expect(telephone, false);
  });

  test('the password field must return wrong because it contains letters and special characters', () {
    final telephone = PasswordValidation.validation(password: '123456789');
    expect(telephone, false);
  });

  // Caminho certo

  test('the password field must return correct because it was filled in correctly', () {
    final telephone = PasswordValidation.validation(password: '01234567');
    expect(telephone, false);
  });
}
