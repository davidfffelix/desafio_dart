import 'package:desafio_dart/validations/email_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado
  test('the email must return true or empty', () {
    final email = EmailValidation.validation(email: '');
    expect(email, false);
  });

  test('the email must return wrong because it contains the wrong domain', () {
    final email = EmailValidation.validation(email: 'whatever@gov.uk');
    expect(email, false);
  });

  test('the email must return wrong because it starts with a number', () {
    final email = EmailValidation.validation(email: '1whatever@outlook.com');
    expect(email, false);
  });

  test('the email must return wrong because with special characters', () {
    final email = EmailValidation.validation(email: 'whatever#!!@gmail.com');
    expect(email, false);
  });

  test('the email must return wrong because it contains a number and a missing period', () {
    final email = EmailValidation.validation(email: 'whatever@outlook2com1br');
    expect(email, false);
  });

  // Caminho Correto

  test('the email must return correct because it was filled in correctly', () {
    final email = EmailValidation.validation(email: 'whatever@outlook.com.br');
    expect(email, false);
  });

  test('the e-mail must return correct because it was filled in correctly with an underline', () {
    final email = EmailValidation.validation(email: 'what_ever@outlook.com');
    expect(email, false);
  });

  test('the e-mail must return correct because it was filled with a valid domain', () {
    final email = EmailValidation.validation(email: 'whatever@gmail.com');
    expect(email, false);
  });

  test('the e-mail must return correct as it was filled in correctly with a dot', () {
    final email = EmailValidation.validation(email: 'what.ever@gmail.com.br');
    expect(email, false);
  });

  test('the e-mail must return correctly because it was filled in correctly with period and domain', () {
    final email = EmailValidation.validation(email: 'what.ever@hotmail.com');
    expect(email, false);
  });

  test('the email must return correct as it was filled with another valid domain', () {
    final email = EmailValidation.validation(email: 'whatever@hotmail.com.br');
    expect(email, false);
  });

  test('the e-mail must return correct because it started with a capital letter', () {
    final email = EmailValidation.validation(email: 'Whatever@hotmail.com.br');
    expect(email, false);
  });

  test('the e-mail must return correct as it contains numbers in the valid location', () {
    final email = EmailValidation.validation(email: 'w23hatever@hotmail.com.br');
    expect(email, false);
  });
}
